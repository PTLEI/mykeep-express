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
router.post('/', function (req, res, next) {
    pool.getConnection((err, connection) => {
        var param = req.body.level;
        console.log(param, typeof param)
        if (param) {
            connection.query(userSQL.getTrainList, param, function (err, result) {
                if (result) {
                    console.log(result);
                    result = {
                        status: 200,
                        data: result
                    };
                } else {
                    result = {
                        status: 201,
                        msg: '没有找到训练课程'
                    }
                }
                responseJSON(res, result);
                connection.release();
            })
        } else {
            connection.query(userSQL.getALLTrainList, function (err, result) {
                if (result) {
                    result = {
                        status: 200,
                        data: result
                    };
                } else {
                    result = {
                        status: 201,
                        msg: '没有找到训练课程'
                    }
                }
                responseJSON(res, result);
                connection.release();
            })
        }

    })
})

module.exports = router;