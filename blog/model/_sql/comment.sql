CREATE TABLE IF NOT EXISTS `comment` (
  `id` BIGINT NOT NULL AUTO_INCREMENT COMMENT 'primary key',
  `user_id` BIGINT NOT NULL COMMENT '关联 user',
  `article_id` BIGINT NOT NULL COMMENT '关联 article',
  `content` LONGTEXT NOT NULL COMMENT '内容',
  `created_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` TINYINT NOT NULL DEFAULT 0 COMMENT '0:未删除 1:已删除',
  -- CONSTRAINT fk_comment_user FOREIGN KEY (`user_id`) REFERENCES user(`id`),
  -- CONSTRAINT fk_comment_article FOREIGN KEY (`article_id`) REFERENCES article(`id`),
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COMMENT = '评论表';