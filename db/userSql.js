var UserSQL = {
    isUser: 'SELECT COUNT(*) FROM users WHERE username = ? AND password = ?',
    queryAll: 'SELECT * FROM users',
    getUserById: 'SELECT * FROM users WHERE id = ? ',
    getUserByUsername: 'SELECT COUNT(*) FROM users WHERE username = ? ',
    getUserInfo: 'SELECT * FROM users WHERE username = ?',

    insert: 'INSERT INTO users(username,password) VALUES(?,?)',
    
    getchoiceList: 'SELECT * FROM choice',
    getChoiceById: 'select * from choice where id = ?',
};
module.exports = UserSQL;