/**
 * 数据库连接
*/
const mysql = require('mysql2');
const config = require('./index');
const log4js = require('./../utils/log4j');

const connection = mysql.createConnection({
  host: config.host,
  user: config.user,
  password: config.password,
  database: config.database
});

connection.connect(error => {
  if (error) {
    log4js.error('***数据库连接失败***');
    return;
  }
  log4js.info('***数据库连接成功***');
});

module.exports = connection;