package svc

import (
	"go-zero-blog/blog/internal/config"
	"go-zero-blog/blog/model/user"

	"github.com/zeromicro/go-zero/core/stores/sqlx"
)

type ServiceContext struct {
	Config    config.Config
	UserModel user.UserModel
}

func NewServiceContext(c config.Config) *ServiceContext {
	conn := sqlx.NewMysql(c.Mysql.DataSource)

	return &ServiceContext{
		Config:    c,
		UserModel: user.NewUserModel(conn),
	}
}
