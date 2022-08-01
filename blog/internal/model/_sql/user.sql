CREATE TABLE IF NOT EXISTS `user` (
  `id` BIGINT NOT NULL AUTO_INCREMENT COMMENT 'primary key',
  `email` VARCHAR(255) NOT NULL COMMENT '用户邮箱',
  `phone` VARCHAR(255) NOT NULL DEFAULT '' COMMENT '用户手机',
  `password` VARCHAR(255) NOT NULL COMMENT '用户密码',
  `nickname` VARCHAR(255) NOT NULL DEFAULT '' COMMENT '用户昵称',
  `gender` TINYINT NOT NULL DEFAULT 0 COMMENT '0:未公开 1:女 2:男',
  `avatar` VARCHAR(500) NOT NULL DEFAULT '' COMMENT '用户头像',
  `role` TINYINT NOT NULL DEFAULT 0 COMMENT '0:用户 1:管理员',
  `created_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` TINYINT NOT NULL DEFAULT 0 COMMENT '0:未删除 1:已删除',
  UNIQUE KEY `uk_email` (`email`),
  UNIQUE KEY `uk_phone` (`phone`),
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COMMENT = '用户信息表';

INSERT INTO
  `user` (
    email,
    phone,
    password,
    nickname,
    gender,
    avatar,
    role
  )
values
  (
    "jinzhehao@souche.com",
    "18368094601",
    "123456",
    "king",
    2,
    "url",
    1
  );