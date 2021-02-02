var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');
var app = express();

const index = require('./routes/index');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, '../../public')));


/**
 * Contrôlleur de toutes les API AJAX de l'appli Angular.
 * Les routes AJAX se trouve dans ./routes
 */
app.use(index);

/**
 * Point d'entrée de l'appli Angular !
 */
app.get('*',(req, res) => {
  res.sendFile(path.join(__dirname, '../../public/index.html'))
})

module.exports = app;
