"use strict";
var express_1 = require("express");
var models = require('./../sqldb');
var studentiRouter = express_1.Router();
exports.studentiRouter = studentiRouter;
studentiRouter.get("/", function (request, response) {
    models.akademska_godina.findAll({ attributes: ['naziv', 'aktuelna'] }).then(function (osobe) {
        return response.json(osobe);
    });
});
//# sourceMappingURL=studenti.js.map