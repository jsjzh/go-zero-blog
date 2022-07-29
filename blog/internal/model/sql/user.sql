CREATE TABLE IF NOT EXISTS `user` (
  `id` BIGINT NOT NULL AUTO_INCREMENT COMMENT 'primary key',
  `nickname` VARCHAR(255) NOT NULL DEFAULT '' COMMENT '用户昵称',
  `email` VARCHAR(255) NOT NULL COMMENT '用户邮箱',
  `password` VARCHAR(255) NOT NULL COMMENT '用户密码',
  `gender` TINYINT NOT NULL DEFAULT 0 COMMENT '0:未公开 1:女 2:男',
  `phone` VARCHAR(255) NOT NULL DEFAULT '' COMMENT '用户手机',
  `avatar` VARCHAR(500) NOT NULL DEFAULT '' COMMENT '用户头像',
  `role` TINYINT NOT NULL DEFAULT 0 COMMENT '0:用户 1:管理员',
  `created_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted_at` DATETIME DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COMMENT = '用户信息表';