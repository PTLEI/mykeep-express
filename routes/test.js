var express = require('express');
var router = express.Router();

/* GET users listing. */
router.get('/', function(req, res, next) {
  res.send('this is test');
  console.log('this is test');
});

module.exports = router;
