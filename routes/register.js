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
// 用户注册
router.post('/', function (req, res, next) {
    // 从连接池获取连接 
    pool.getConnection(function (err, connection) {
        // post方法,获取前台页面传过来的参数  
        var param = req.body.params;
        // 建立连接 增加一个用户信息 
        console.log(param);
        connection.query(userSQL.getUserByUsername, [param.username], function (err, result) {
            console.log(result[0]["COUNT(*)"]);
            // 用户已存在，返回错误信息
            if (result[0]["COUNT(*)"]) {
                res.json({
                    status: 202, msg: '用户已存在'
                });
                // 释放连接  
                connection.release();
            } else {
                // 用户不存在，增加一个用户信息
                connection.query(userSQL.insertUser, [param.username, param.password], function (err, result) {
                    if (result) {
                        result = {
                            status: 200,
                            msg: '注册成功',
                        };
                    } else {
                        result = {
                            status: 201,
                            msg: '注册失败',
                        };
                        console.log(err)
                    }
                    // 以json形式，把操作结果返回给前台页面     
                    responseJSON(res, result);
                    // 释放连接  
                    connection.release();
                });
            }
        })

    });
});
module.exports = router;