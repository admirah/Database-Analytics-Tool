'use strict';

var express = require('express');
var controller = require('./dashboard.controller');

var router = express.Router();

router.get('/getCities', controller.getCities);
router.get('/getStudentGrades/:id',controller.getStudentGrades);

router.get('/getGradesByYears',controller.getGradesByYears);
router.get('/getYears',controller.getYears);
router.get('/getGradesByYear/:id',controller.getGradesByYear);

router.get('/getStudents',controller.getStudents);

router.get('/getSubjects',controller.getSubjects);
router.get('/getSurveyData/:ag/:pr',controller.getSurveyData);

router.get('/projectNumberOfStudents/:predmetId', controller.projectNumberOfStudents);
router.post('/topdf', controller.toPdf);
module.exports = router;/**
 * Created by Admira on 07.11.2016..
 */
