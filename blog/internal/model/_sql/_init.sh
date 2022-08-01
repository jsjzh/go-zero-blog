#!/usr/bin/env bash

goctl model mysql ddl --src ./user.sql --dir ../user --remote https://github.com/jsjzh/go-zero-template &&
  goctl model mysql ddl --src ./article_type.sql --dir ../article_type --remote https://github.com/jsjzh/go-zero-template &&
  goctl model mysql ddl --src ./article.sql --dir ../article --remote https://github.com/jsjzh/go-zero-template &&
  goctl model mysql ddl --src ./comment.sql --dir ../comment --remote https://github.com/jsjzh/go-zero-template
