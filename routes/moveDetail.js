var express = require('express');
var router = express.Router();
// 导入MySQL模块
var mysql = require('mysql');
var dbConfig = require('../db/dbConfig');
var userSQL = require('../db/userSql');
// 使用DBConfig.js的配置信息创建一个MySQL连接池
var pool = mysql.createPool(dbConfig.mysql);
// 响应一个JSON数据
var responseJSON = function (res, ret) {
    if (typeof ret === 'undefined') {
        res.json({
            code: '-200', msg: '操作失败'
        });
    } else {
        res.json(ret);
    }
};
router.get('/', function (req, res, next) {
    var param = req.query || req.params;
    pool.getConnection(function (err, connection) {
        connection.query(userSQL.moveDetailCount, [param.id], function (err, row) {
            if (row[0]["COUNT(*)"]) {
                connection.query(userSQL.getMoveDetail, [param.id], function (err, result) {
                    result = {
                        status: 200,
                        data: result
                    };
                    console.log(11);
                    responseJSON(res, result);
                    connection.release();
                });
            } else {
                connection.query(userSQL.getMoveDetail, 200001, function (err, result) {
                    result = {
                        status: 200,
                        data: result
                    };
                    responseJSON(res, result);
                    connection.release();
                });
            }
        })
    })
})

module.exports = router;