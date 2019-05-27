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

router.post('/', (req, res, next) => {
    // 使用POST请求是为确保前端所传数据格式不变，GET请求会使数据变为string格式
    var param = req.body;
    console.log(param);
    pool.getConnection((err, connection) => {
        connection.query(param.level ? userSQL.getMoveListByBodyAndLevel : userSQL.getMoveListByBody, [param.bodyPart, param.level], (err, result) => {
            if (result) {
                result = {
                    status: 200,
                    data: result
                }
            } else {
                result = {
                    status: 201,
                    msg: '查询无结果',
                };
            }
            responseJSON(res, result);
            connection.release();
        })
    })
})

module.exports = router;