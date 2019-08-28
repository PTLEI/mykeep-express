/**
 * 接口地址
 */
let url = 'http://120.79.59.91:3000'
// let url = 'http://localhost:3000'
export default {
    // 测试接口
    test: `${url}/test`,
    // 登陆接口
    loginUrl: `${url}/login`,
    // 注册接口
    registerUrl: `${url}/register`,
    // 精选资讯列表
    getInfoList: `${url}/getInfoList`,
    // 获取资讯内容
    getInfoDetail: `${url}/getInfoDetail`,
    // 课程分类列表
    getTrainList: `${url}/trainList`,
    // 课程列表
    getLessonList: `${url}/lessonList`,
    // 课程内容详情
    getLessonDetail: `${url}/lessonDetail`,
    // 动作列表
    getMoveList: `${url}/moveList`,
    // 动作内容详情
    getMoveDetail: `${url}/moveDetail`,
    // 训练历程
    getHistory: `${url}/history`,
    // 修改用户信息
    modifyInfo: `${url}/modifyInfo`,
}