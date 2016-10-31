import { Router, Request, Response } from "express";
var models = require('./../sqldb');

const studentiRouter: Router = Router();

studentiRouter.get("/", function (request: Request, response: Response) {
  models.akademska_godina.findAll({    attributes: ['naziv', 'aktuelna']}).then(function(osobe){
    return response.json(osobe);
  });
});

export { studentiRouter }
