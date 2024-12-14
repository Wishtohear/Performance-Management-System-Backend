-- 创建数据库
CREATE DATABASE IF NOT EXISTS `admin-design`;

-- 使用数据库
USE `admin-design`;

-- 创建用户表
CREATE TABLE IF NOT EXISTS `users` (
  `userId` INT AUTO_INCREMENT PRIMARY KEY,
  `userName` VARCHAR(255) NOT NULL,
  `userPwd` VARCHAR(255) NOT NULL,
  `userEmail` VARCHAR(255),
  `mobile` VARCHAR(20),
  `sex` TINYINT,
  `deptId` JSON,
  `job` VARCHAR(255),
  `state` TINYINT DEFAULT 1,
  `role` TINYINT DEFAULT 1,
  `roleList` JSON,
  `createTime` DATETIME DEFAULT CURRENT_TIMESTAMP,
  `lastLoginTime` DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `remark` TEXT
);

-- 插入示例数据
INSERT INTO `users` (`userName`, `userPwd`, `userEmail`, `mobile`, `sex`, `deptId`, `job`, `state`, `role`, `roleList`, `remark`)
VALUES
('admin', '5f4dcc3b5aa765d61d8327deb882cf99', 'admin@example.com', '1234567890', 0, '[]', 'Administrator', 1, 0, '[]', 'System administrator'),
('user1', '5f4dcc3b5aa765d61d8327deb882cf99', 'user1@example.com', '0987654321', 1, '[]', 'User', 1, 1, '[]', 'Regular user');