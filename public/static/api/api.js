import axios from 'axios'
import config from './config'
import Vue from 'Vue'
import { Notification } from 'element-ui'
Vue.prototype.$notify = Notification;
import Bus from '../../src/components/Bus'
// import { resolve } from 'dns';

// 默认5秒超时
axios.defaults.timeout = 5000;
/*
* 测试test
*/
let test = function () {
    return new Promise((resolve, reject) => {
        axios.get(config.test)
            .then((res) => {
                resolve(res);
            })
            .catch((error) => {
                reject(error);
            })
    })
}

/**
 * 登录
 */
let login = function (username, password) {
    return new Promise((resolve, reject) => {
        axios.post(config.loginUrl, {
            params: {
                username: username,
                password: password
            }
        }).then(res => {
            resolve(res);
        }).catch(error => {
            reject(error);
        })
    })
}
/**
 * 注册
 */
let register = function (username, password) {
    return new Promise((resolve, reject) => {
        axios.post(config.registerUrl, {
            params: {
                username: username,
                password: password
            }
        }).then(res => {
            resolve(res);
        }).catch(error => {
            reject(error);
        })
    })
}

/**
 * 获取资讯列表模块
 */
let getChoiceList = function () {
    axios.get(config.getChoiceList).then(res => {
        Bus.$emit('getChoiceList')
    }).catch(err => {
        console.log(err);
    })
}

/**
 * 获取训练分类List
 * @param  {...any} level 
 */
let getTrainList = function (...level) {
    return new Promise((resolve, reject) => {
        if (level.length === 0) {
            axios.post(config.getTrainList).then(res => {
                resolve(res);
            }).catch(error => {
                reject(error);
            })
        } else {
            let param = level[0];
            axios.post(config.getTrainList, { level: param }).then(res => {
                resolve(res);
            }).catch(error => {
                reject(error);
            })
        }
    })
}

/**
 * 课程列表ByTrainId
 */
let getLessonList = function (id) {
    return new Promise((resolve, reject) => {
        axios.get(config.getLessonList, {
            params: {
                id: id
            }
        }).then(res => {
            resolve(res);
        }).catch(error => {
            reject(error);
        })
    })
}

/**
 * 课程详情ByLessonId
 */
let getLessonDetail = function (id) {
    return new Promise((resolve, reject) => {
        axios.get(config.getLessonDetail, {
            params: {
                id: id
            }
        }).then(res => {
            resolve(res);
        }).catch(error => {
            reject(error);
        })
    })
}

/**
 * 动作列表byBodyPart
 * 使用POST请求是为确保前端所传数据格式不变，GET请求会使数据变为string格式
 */
let getMoveList = function (bodyPart, level) {
    return new Promise((resolve, reject) => {
        axios.post(config.getMoveList, {
            bodyPart: bodyPart,
            level: level
        }).then(res => {
            resolve(res);
        }).catch(error => {
            reject(error);
        })
    })
}

/**
 * 动作详情byMovementId
 */
let getMoveDetail = function (id) {
    return new Promise((resolve, reject) => {
        axios.get(config.getMoveDetail, {
            params: {
                id: id
            }
        }).then(res => {
            resolve(res);
        }).catch(error => {
            reject(error);
        })
    })
}

/**
 * 获取训练历程By userId
 */
let getHistory = function (id) {
    return new Promise((resolve, reject) => {
        axios.post(config.getHistory, {
            id: id
        }).then(res => {
            resolve(res);
        }).catch(error => {
            reject(error);
        })
    })
}

/**
 * 用户信息修改
 */
let modifyInfo = function (params) {
    return new Promise((resolve, reject) => {
        axios.post(config.modifyInfo, {
            params
        }).then(res => {
            resolve(res);
        }).catch(err => {
            reject(err);
        })
    })
}

export default {
    test,
    login,
    register,
    getChoiceList,
    getTrainList,
    getLessonList,
    getLessonDetail,
    getMoveList,
    getMoveDetail,
    getHistory,
    modifyInfo
}