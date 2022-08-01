# go-zero-blog

## 说明

使用 go-zero 做后端框架，做一个单服务的博客系统

> 后续可以把单服务改成微服务

## 功能

1. 用户系统 user
2. 文章系统 article
3. 分类系统 article_type
4. 评论系统 comment

# go-zero-blog

## 指南

**启动**

```shell
go run blog/blog.go -f blog/etc/blog-api.yaml
# or
air run blog/blog.go -f blog/etc/blog-api.yaml
```

## 说明

使用 go-zero 做后端框架，做一个单服务的博客系统

> 后续可以把单服务改成微服务

## 功能

1. 用户系统 user
2. 文章系统 article
3. 分类系统 article_type
4. 评论系统 comment

## 备忘

```shell
mkdir go-zero-blog
cd go-zero-blog

go mod init go-zero-blog

goctl api new blog
go mod tidy

goctl model mysql ddl --src ./user.sql --dir ../user --remote https://github.com/jsjzh/go-zero-template

goctl api go --api blog.api --dir ./ --remote https://github.com/jsjzh/go-zero-template
```
