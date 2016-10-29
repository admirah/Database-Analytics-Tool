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

// Insert models below

/*
db.sequelize.sync({
    force: true
});


db.sequelize.sync({
    force: true
});*/
db.sequelize
    .authenticate()
    .then(function(err) {
        console.log('Connection has been established successfully.');
    })
    .catch(function(err) {
        console.log('Unable to connect to the database:', err);
    });


module.exports = {};
