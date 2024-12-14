const connection = require('../config/db');

const getUserByCredentials = (userName, userPwd) => {
  return new Promise((resolve, reject) => {
    const query = 'SELECT * FROM users WHERE userName = ? AND userPwd = ?';
    connection.query(query, [userName, userPwd], (error, results) => {
      if (error) {
        return reject(error);
      }
      resolve(results[0]);
    });
  });
};

module.exports = {
  getUserByCredentials
};