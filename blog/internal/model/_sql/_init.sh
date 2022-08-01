#!/usr/bin/env bash

goctl model mysql ddl --src ./user.sql --dir ../user &&
  goctl model mysql ddl --src ./article_type.sql --dir ../article_type &&
  goctl model mysql ddl --src ./article.sql --dir ../article &&
  goctl model mysql ddl --src ./comment.sql --dir ../comment
