var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');

var indexRouter = require('./routes/index');
var loginRouter = require('./routes/login');
var registerRouter = require('./routes/register');

var choiceRouter = require('./routes/choice');

// 训练课程
var getTrainListRouter = require('./routes/trainList');
var lessonRouter = require('./routes/lessonList');
var lessonDetailRouter = require('./routes/lessonDetail');
// 动作分类
var moveListRouter = require('./routes/moveList');
var moveDetailRouter = require('./routes/moveDetail');

// 修改用户信息
var modifyInfoRouter = require('./routes/modifyInfo');
// 训练历程
var historyRouter = require('./routes/history');


var test = require('./routes/test');
var app = express();

//CORS
app.all('*', function (req, res, next) {
  res.header("Access-Control-Allow-Origin", "*");
  res.header('Access-Control-Allow-Methods', 'PUT, GET, POST, DELETE, OPTIONS');
  res.header("Access-Control-Allow-Headers", "X-Requested-With");
  res.header('Access-Control-Allow-Headers', 'Content-Type');
  next();
});

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'pug');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

app.use('/', indexRouter);
app.use('/login', loginRouter);
app.use('/register', registerRouter);

app.use('/choice', choiceRouter);
app.use('/trainList', getTrainListRouter);
app.use('/lessonList', lessonRouter);
app.use('/lessonDetail', lessonDetailRouter);
app.use('/moveList', moveListRouter);
app.use('/moveDetail', moveDetailRouter);
app.use('/modifyInfo', modifyInfoRouter);
app.use('/history', historyRouter);

app.use('/test', test);

// catch 404 and forward to error handler
app.use(function (req, res, next) {
  next(createError(404));
});

// error handler
app.use(function (err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
