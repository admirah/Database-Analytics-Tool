/**
 * Sequelize initialization module
 */

'use strict';

var env = process.env.NODE_ENV || 'development';
var config = require('../database.json')[env];
var Sequelize = require('sequelize');

var db = {
    Sequelize,
    sequelize: new Sequelize(config.database, config.username, config.password, config.options)
};
exports.dbS=db.sequelize;

var akademska_godina = db.sequelize.import('./models/akademska_godina.js');
var akademska_godina_predmet = db.sequelize.import('./models/akademska_godina_predmet.js');
/*var drzava = db.sequelize.import('./models/drzava.js');  NEMA MODELA DRZAVE
var konacna_ocjena = db.sequelize.import('./models/konacna_ocjena.js');
var mjesto = db.sequelize.import('./models/mjesto.js');
var nastavnik_predmet = db.sequelize.import('./models/nastavnik_predmet.js');
var opcina = db.sequelize.import('./models/opcina.js');
var osoba = db.sequelize.import('./models/osoba.js');
var predmet = db.sequelize.import('./models/predmet.js');
//drzava.hasMany(mjesto);
//mjesto.belongsTo(drzava,{foreignKey:'drzava'});
osoba.hasMany(nastavnik_predmet);
akademska_godina.hasMany(nastavnik_predmet);
predmet.hasMany(nastavnik_predmet);
nastavnik_predmet.belongsTo(osoba, {foreignKey:'osoba'});
nastavnik_predmet.belongsTo(akademska_godina,{foreignKey:'akademska_godina'});
nastavnik_predmet.belongsTo(predmet, {foreignKey:'predmet'});

mjesto.hasMany(osoba);
osoba.belongsTo(mjesto, {foreignKey:'adresa_mjesto'});

akademska_godina.hasMany(akademska_godina_predmet);
predmet.hasMany(akademska_godina_predmet);
akademska_godina_predmet.belongsTo(akademska_godina),{foreignKey:'akademska_godina'};
akademska_godina_predmet.belongsTo(predmet),{foreignKey:'predmet'};
student.hasMany(konacna_ocjena);
predmet.hasMany(konacna_ocjena);
akademska_godina.hasMany(konacna_ocjena);
konacna_ocjena.belongsTo(student,{foreignKey:'student'});
konacna_ocjena.belongsTo(predmet,{foreignKey:'predmet'});
konacna_ocjena.belongsTo(akademska_godina,{foreignKey:'akademska_godina'});
*/

var db = {};
db.akademska_godina = akademska_godina;
db.akademska_godina_predmet = akademska_godina_predmet;
db.sequelize=new Sequelize(config.database, config.username, config.password, config.options)
/*db.drzava = drzava;
db.mjesto = mjesto;
db.konacna_ocjena = konacna_ocjena;
db.nastavnik_predmet = nastavnik_predmet;
db.opcina = opcina;
db.osoba = osoba;
db.predmet = predmet;*/
module.exports = db;


// Insert models below

/*
db.sequelize.sync({
    force: true
});


db.sequelize.sync({
    force: true
});*/
/*db.sequelize
    .authenticate()
    .then(function(err) {
        console.log('Connection has been established successfully.');
    })
    .catch(function(err) {
        console.log('Unable to connect to the database:', err);
    });
*/

exports.db=db;
