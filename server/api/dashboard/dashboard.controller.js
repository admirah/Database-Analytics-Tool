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
var sq=require('../../sqldb/index.js');
var sequelize=sq.sequelize;

exports.getCities = function(req, res) {
console.log("hej")
  sequelize.query("select m.naziv as 'key', " +
      "(select count(o.id) from osoba o where o.adresa_mjesto=m.id) as 'y' from mjesto m;", { type: sequelize.QueryTypes.SELECT })
    .then(function (users) {
      return res.json(users);
    });
};

exports.getStudentGrades = function(req, res) {
  console.log("ansifjsiofjsdigjsiogjiojg");
  sequelize.query("SElECT DISTINCT CONCAT(x.ime,' ',x.prezime) as 'ime', p.naziv , o.oc" +
      "jena from predmet p, konacna_ocjena o,osoba x where x.id=student and student=" + req.params.id, {type: sequelize.QueryTypes.SELECT})
    .then(function (users) {
      return res.json(users);
    });
}

exports.getStudents = function(req, res) {
  console.log("ansifjsiofjsdigjsiogjiojg");
  sequelize.query("SElECT DISTINCT  id, CONCAT(ime,' ',prezime) as 'ime' from osoba where id>43", {type: sequelize.QueryTypes.SELECT})
    .then(function (users) {
      return res.json(users);
    });
}

  exports.getGradesByYears=function(req,res){

    console.log("admirica je sad");
    sequelize.query("select (select count(g1.student) from konacna_ocjena g1 where g1.akademska_godina=a1.id AND g1.ocjena=6) as '6', (select count(g1.student) from konacna_ocjena g1 where g1.akademska_godina=a1.id AND g1.ocjena=7) as '7',(select count(g1.student) from konacna_ocjena g1 where g1.akademska_godina=a1.id AND g1.ocjena=8) as '8', (select count(g1.student) from konacna_ocjena g1 where g1.akademska_godina=a1.id AND g1.ocjena=9) as '9', (select count(g1.student) from konacna_ocjena g1 where g1.akademska_godina=a1.id AND g1.ocjena=10) as '10',(a1.naziv) from akademska_godina a1 ", { type: sequelize.QueryTypes.SELECT })
      .then(function (users) {
        return res.json(users);
      });
  }

exports.getGradesByYear=function(req,res){

  console.log("elo jesi normalan");
  sequelize.query("select count(g1.student) as 'y', g1.ocjena as 'key' from akademska_godina a1, konacna_ocjena g1 where g1.akademska_godina=a1.id and a1.id="+req.params.id+" group by g1.ocjena", { type: sequelize.QueryTypes.SELECT })
    .then(function (users) {
      return res.json(users);
    });
}

exports.getYears=function(req,res){

  console.log("admirica je sad");
  sequelize.query("select id , naziv from akademska_godina", { type: sequelize.QueryTypes.SELECT })
    .then(function (users) {
      return res.json(users);
    });
}

