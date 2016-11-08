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

module.exports = router;/**
 * Created by Admira on 07.11.2016..
 */
