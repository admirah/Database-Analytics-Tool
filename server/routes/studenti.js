"use strict";
var express_1 = require("express");
var models = require('./../sqldb');
var ss = require('./../sqldb/index.js');
var studentiRouter = express_1.Router();
exports.studentiRouter = studentiRouter;
studentiRouter.get("/", function (request, response) {
    /*models.akademska_godina.findAll({    attributes: ['naziv', 'aktuelna']}).then(function(osobe){
      return response.json(osobe);
    });
  */
    console.log(ss["sequelize"]);
    var sequelize = ss["sequelize"];
    sequelize.query("select (select count(g1.student) from konacna_ocjena g1 where g1.akademska_godina=a1.id AND g1.ocjena=6) as '6', (select count(g1.student) from konacna_ocjena g1 where g1.akademska_godina=a1.id AND g1.ocjena=7) as '7',(select count(g1.student) from konacna_ocjena g1 where g1.akademska_godina=a1.id AND g1.ocjena=8) as '8', (select count(g1.student) from konacna_ocjena g1 where g1.akademska_godina=a1.id AND g1.ocjena=9) as '9', (select count(g1.student) from konacna_ocjena g1 where g1.akademska_godina=a1.id AND g1.ocjena=10) as '10',(a1.naziv) from akademska_godina a1 ", { type: sequelize.QueryTypes.SELECT })
        .then(function (users) {
        return response.json(users);
    });
});
//# sourceMappingURL=studenti.js.map