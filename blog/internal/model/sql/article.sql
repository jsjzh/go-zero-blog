CREATE TABLE IF NOT EXISTS `article` (
  `id` BIGINT NOT NULL COMMENT 'primary key' PRIMARY KEY AUTO_INCREMENT,
  `title` TEXT NOT NULL COMMENT '文章标题',
  `content` LONGTEXT NOT NULL COMMENT '文章内容',
  `type_id` BIGINT NOT NULL COMMENT '文章类型',
  `created_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted_at` DATETIME DEFAULT NULL COMMENT '删除时间',
  CONSTRAINT fk_article_type FOREIGN KEY (`type_id`) REFERENCES type(`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COMMENT = '文章表';