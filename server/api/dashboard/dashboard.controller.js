/**
 * Using Rails-like standard naming convention for endpoints.
 * GET     /things              ->  index
 * POST    /things              ->  create
 * GET     /things/:id          ->  show
 * PUT     /things/:id          ->  update
 * DELETE  /things/:id          ->  destroy
 */

'use strict';
var _ = require('lodash');
// Get list of things
var sq = require('../../sqldb/index.js');
var sequelize = sq.sequelize;
var wkhtmltopdf = require('wkhtmltopdf');

exports.getCities = function(req, res) {
    console.log("hej")
    sequelize.query("select m.naziv as 'key', " +
            "(select count(o.id) from osoba o where o.adresa_mjesto=m.id) as 'y' from mjesto m;", {
                type: sequelize.QueryTypes.SELECT
            })
        .then(function(users) {
            return res.json(users);
        });
};

exports.getStudentGrades = function(req, res) {
    console.log("ansifjsiofjsdigjsiogjiojg");
    sequelize.query("SElECT DISTINCT CONCAT(x.ime,' ',x.prezime) as 'ime', p.naziv , " +
            "  o.ocjena from predmet p, konacna_ocjena o,osoba x where x.id=o.student " +
            "and p.id =o.predmet  and o.student = " + req.params.id, {
                type: sequelize.QueryTypes.SELECT
            })
        .then(function(users) {
            return res.json(users);
        });
}

exports.getStudents = function(req, res) {
    console.log("ansifjsiofjsdigjsiogjiojg");
    sequelize.query("SElECT DISTINCT  id, CONCAT(ime,' ',prezime) as 'ime' from osoba where id>43", {
            type: sequelize.QueryTypes.SELECT
        })
        .then(function(users) {
            return res.json(users);
        });
}
exports.getGradesBySubject = function(req, res) {
    var n=req.params.id;
    n=n.replace("+"," ");
    console.log("ansifjsiofjsdigjsiogjiojg");
    sequelize.query("SElECT DISTINCT CONCAT(x.ime,' ',x.prezime) as 'ime', p.naziv as 'predmet', " +
            "  o.ocjena from predmet p, konacna_ocjena o,osoba x where x.id=o.student " +
            "and p.id =o.predmet  and o.student=x.id and CONCAT(x.ime,' ',x.prezime)='"+n+"'", {
                type: sequelize.QueryTypes.SELECT
            })
        .then(function(users) {
            return res.json(users);
        });
}
exports.getGradesByStudent=function(req,res){
 var n=req.params.id;
    n=n.replace("+"," ");
  console.log("elo jesi normalan"+n);
  sequelize.query("select ocjena, count(*) as 'broj' from konacna_ocjena,osoba o where student=o.id && CONCAT(o.ime,' ',o.prezime)='"+n+"' group by ocjena", { type: sequelize.QueryTypes.SELECT })
    .then(function (users) {
      return res.json(users);
    });
}

exports.getGradesByYears = function(req, res) {

    sequelize.query("select (select count(g1.student) from konacna_ocjena g1 where g1.akademska_godina=a1.id AND g1.ocjena=6) as '6', (select count(g1.student) from konacna_ocjena g1 where g1.akademska_godina=a1.id AND g1.ocjena=7) as '7',(select count(g1.student) from konacna_ocjena g1 where g1.akademska_godina=a1.id AND g1.ocjena=8) as '8', (select count(g1.student) from konacna_ocjena g1 where g1.akademska_godina=a1.id AND g1.ocjena=9) as '9', (select count(g1.student) from konacna_ocjena g1 where g1.akademska_godina=a1.id AND g1.ocjena=10) as '10',(a1.naziv) from akademska_godina a1 ", {
            type: sequelize.QueryTypes.SELECT
        })
        .then(function(users) {
            return res.json(users);
        });
}

exports.getGradesByYear = function(req, res) {

    sequelize.query("select count(g1.student) as 'y', g1.ocjena as 'key' from akademska_godina a1, konacna_ocjena g1 where g1.akademska_godina=a1.id and a1.id=" + req.params.id + " group by g1.ocjena", {
            type: sequelize.QueryTypes.SELECT
        })
        .then(function(users) {
            return res.json(users);
        });
}

exports.getYears = function(req, res) {

    sequelize.query("select id , naziv from akademska_godina", {
            type: sequelize.QueryTypes.SELECT
        })
        .then(function(users) {
            return res.json(users);
        });
}


exports.getSubjects = function(req, res) {

    sequelize.query("select id , naziv from predmet", {
            type: sequelize.QueryTypes.SELECT
        })
        .then(function(users) {
            return res.json(users);
        });
}

exports.getComments = function(req, res) {
    sequelize.query("SELECT komentar FROM anketa_komentar WHERE predmet_id = :predmet AND akademska_godina = :akademska", {
        replacements: {
            predmet: req.params["predmetId"],
            akademska: req.params["academicYear"]
        },
        type: sequelize.QueryTypes.SELECT
    }).then(function(result) {
        var arr = [];
        //var pozitivno = ["good", "positive", "excellent", "great", "awesome", "fantastic", "quality", "interesting", "helpful", "valuable"];
        var pozitivno=["super","odlic","lako"," zanimlji","lako"];
        var negativno=["los","grozn","nisu dob","nij","ile dosadn",". Dosadn"];
        //var negativno = ["bad", "boring", "negative", "offensive", "shocking", "creepy", "crazy", "dishonest", "angry", "arrogant"];
        var kljucnaRijec = req.params["kljucnaRijec"];
        if (parseInt(req.params["filter"]) == 1) {
            return res.json(result);
        } else if (parseInt(req.params["filter"]) == 2) { //samo pozitivni
            for (var i = 0; i < result.length; ++i) {
                for (var j = 0; j < pozitivno.length; j++) {
                    if (result[i].komentar.search(pozitivno[j]) > -1) {arr.push(result[i]); break;}
                }
            }
        } else if (parseInt(req.params["filter"]) == 3) //samo negativni
        {
            for (var i = 0; i < result.length; ++i) {
                for (var j = 0; j < pozitivno.length; j++) {
                    if (result[i].komentar.search(negativno[j]) > -1) {arr.push(result[i]); break;}
                }
            }
        } else { //kljucna rijec
            for (var i = 0; i < result.length; ++i) {
                if (result[i].komentar.indexOf(kljucnaRijec) != -1) arr.push(result[i]);
            }
        }
        res.json(arr);
    });

};

exports.getCommentsMobile = function(req, res) {
var n=req.params.id;
    n=n.replace("+"," ");
  console.log("elo jesi normalan"+n);
     sequelize.query("SELECT komentar FROM anketa_komentar,predmet p WHERE predmet_id =p.id && p.naziv='"+n+"'", {
            type: sequelize.QueryTypes.SELECT
        })
        .then(function(result) {
        var arr = [];
       var pozitivno=["super","odlic","lako"," zanimlji","lako"];
        var negativno=["los","grozn","nisu dob","nij","ile dosadn",". Dosadn"];
         var kljucnaRijec = req.params["kljucnaRijec"];
        if (parseInt(req.params["filter"]) == 1) {
            return res.json(result);
        } else if (parseInt(req.params["filter"]) == 2) { //samo pozitivni
            for (var i = 0; i < result.length; ++i) {
                for (var j = 0; j < pozitivno.length; j++) {
                    if (result[i].komentar.search(pozitivno[j]) > -1) {arr.push(result[i]); break;}
                }
            }
        } else if (parseInt(req.params["filter"]) == 3) //samo negativni
        {
            for (var i = 0; i < result.length; ++i) {
                for (var j = 0; j < pozitivno.length; j++) {
                    if (result[i].komentar.search(negativno[j]) > -1) {arr.push(result[i]); break;}
                }
            }
    
        }
        res.json(arr);
    });
}

exports.getNumberOfStudents = function(req, res) {
var n=req.params.id;
    n=n.replace("+"," ");
  console.log("elo jesi normalan"+n);
     sequelize.query("SELECT count(student) as 'broj', ag.naziv as 'naziv' FROM zamger.student_predmet, akademska_godina ag, predmet p where p.naziv='"+n+"' and predmet=p.id and ag.id=student_predmet.akademska_godina group by akademska_godina", {
            type: sequelize.QueryTypes.SELECT
        })
        .then(function(result) {
            return res.json(result);
        });
}
exports.projectNumberOfStudents = function(req, res) {
    sequelize.query("SELECT akademska_godina, Count(*) broj_studenata FROM student_predmet WHERE predmet = :predmet_id GROUP BY akademska_godina", {
        replacements: {
            predmet_id: req.params["predmetId"]
        },
        type: sequelize.QueryTypes.SELECT
    }).then(function(result) {
        var x = result.map(function(obj) {
            return obj.akademska_godina;
        });
        var y = result.map(function(obj) {
            return obj.broj_studenata;
        });
        var LinearRegression = require('shaman').LinearRegression;
        var lr = new LinearRegression(x, y);
        var naziviGodina = ['2008/09', '2009/10', '2010/11', '2011/12', '2012/13', '2013/14', '2014/15', '2015/16', '2016/17', '2017/18', '2018/19', '2019/20'];
        var niz = [];
        lr.train(function(err) {
            if (err) {
                throw err;
            }
            for (var i = 0; i < x.length; i++) {
                niz.push([x[i], y[i]]);
            }
            niz.push([10, parseInt(lr.predict(1))]);
            niz.push([11, parseInt(lr.predict(2))]);
            niz.push([12, parseInt(lr.predict(3))]);
        })
        res.json({
            values: niz,
            nazivi: naziviGodina
        });
    });
};

exports.getSurveyData = function(req, res) {
    sequelize.query("select id , tekst from ank_pitanje", {
            type: sequelize.QueryTypes.SELECT
        })
        .then(function(users) {
            var resp = [];
            var i = 0;
            users.forEach(function(user) {

                var n = {
                    key: user.tekst,
                    values: {}
                }

                sequelize.query("SELECT odgovor as 'label', count(aso.id) as 'value' FROM anketa_student_odgovor aso, anketa a," +
                        " predmet p, ank_pitanje ap,predmet_pitanje pp where aso.pitanje_predmet=pp.id AND pp.pitanje=ap.id and " +
                        "pp.predmet=p.id and pp.anketa=a.id and a.akademska_godina=" + req.params.ag + " and p.id=" + req.params.pr + " AND ap.id=" + user.id +
                        " group by odgovor", {
                            type: sequelize.QueryTypes.SELECT
                        })
                    .then(function(data) {
                        i++;
                        n.values = data;
                        resp.push(n);

                        if (i == users.length) return res.json(resp);


                    });


            })

        });
}

exports.toPdf = function(req, res) {
    var path = require('path');
    var mime = require('mime');
    var fs = require('fs');
    var pdfPath = "./tmp/report.pdf";
    wkhtmltopdf(req.body.elems.join(" "), {
        output: pdfPath
    });
    res.download(pdfPath);
    
    
    
    
    
    
    
    
    
    
    
    /*
        var file = pdfPath;
        var filename = path.basename(file);
        var mimetype = mime.lookup(file);
        res.setHeader('Content-disposition', 'attachment; filename=' + filename);
res.setHeader('Content-type', mimetype);

var filestream = fs.createReadStream(file);
filestream.pipe(res);
filestream.on('close', function (error) {
  if (error) return res.send(500);
  fs.unlink(pdfPath);});*/

};
/*
exports.updateImenaPredmeta = function(req, res){
  var fs = require('fs');
  var randomWords = require('random-words');

  function getRandNum(min, max){
  	return Math.random() * (max - min) + min;
  }
  var stream = fs.createWriteStream('log.sql', {'flags': 'a'});
  for(var i = 1; i <= 100000; ++i){
  	var str = "";
  	var brRecenica = getRandNum(2, 10);
  	for(var j = 0; j < brRecenica; ++j){
  		var duzinaRec = getRandNum(5, 15);
  		var recenica = randomWords({exactly: duzinaRec, join: " "}) + ". ";
  		str += recenica;
  	}
  	var query = "UPDATE anketa_komentar SET komentar= \'" + str + "\'" + "WHERE id = " + i +";\n";
          stream.write(query);
  }

  return res.send("OK");
};*/



exports.getAverageGrades=function(req,res){
 var n=req.params.id;
    n=n.replace("+"," ");
  console.log("elo jesi normalan"+n);
  sequelize.query("select avg(ocjena) as prosjek, ag.naziv as 'godina' from konacna_ocjena,osoba o,akademska_godina ag where student=o.id AND akademska_godina=ag.id && CONCAT(o.ime,' ',o.prezime)='"+n+"' group by naziv", { type: sequelize.QueryTypes.SELECT })
    .then(function (users) {
      return res.json(users);
    });
}





