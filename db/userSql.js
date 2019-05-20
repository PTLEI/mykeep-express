var UserSQL = {
    isUser: 'SELECT COUNT(*) FROM users WHERE username = ? AND password = ?',
    queryAll: 'SELECT * FROM users',
    getUserById: 'SELECT * FROM users WHERE id = ? ',
    getUserByUsername: 'SELECT COUNT(*) FROM users WHERE username = ? ',
    getUserInfo: 'SELECT * FROM users WHERE username = ?',

    insert: 'INSERT INTO users(username,password) VALUES(?,?)',
    // 训练计划模块
    getTrainList: 'SELECT * FROM trainlist WHERE level = ?',
    getALLTrainList: 'SELECT * FROM trainlist',
    // 课程列表模块
    getLesByTrainId: 'SELECT * FROM lessonlist WHERE lessonId IN (SELECT lessonId FROM traintoles WHERE trainId = ?)',
    getLessonDetail: 'SELECT * FROM lessondetail WHERE lessonId = ?',
    getMoveListByLesId: 'SELECT * FROM movementlist WHERE movementId IN (SELECT movementId FROM lestomove WHERE lessonId = ?)',
    // 动作列表模块
    getMoveListByBody: 'SELECT * FROM movementlist WHERE bodyPart = ?',
    getMoveDetail: 'SELECT * FROM movedetail WHERE movementId = ?',
    // 资讯模块
    getchoiceList: 'SELECT * FROM choice',
    getChoiceById: 'select * from choice where id = ?',
    // 训练历程
    getHistoryByUserId: 'SELECT * FROM trainlist WHERE trainId IN (SELECT trainId FROM history WHERE userId = ?)',
};
module.exports = UserSQL;