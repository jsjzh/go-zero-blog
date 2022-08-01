package user

import (
	"context"

	"go-zero-blog/blog/internal/svc"
	"go-zero-blog/blog/internal/types"

	"github.com/zeromicro/go-zero/core/logx"
)

type GetUserLogic struct {
	logx.Logger
	ctx    context.Context
	svcCtx *svc.ServiceContext
}

func NewGetUserLogic(ctx context.Context, svcCtx *svc.ServiceContext) *GetUserLogic {
	return &GetUserLogic{
		Logger: logx.WithContext(ctx),
		ctx:    ctx,
		svcCtx: svcCtx,
	}
}

func (l *GetUserLogic) GetUser(req *types.GetUserReq) (resp *types.GetUserResp, err error) {
	user, error := l.svcCtx.UserModel.FindOne(l.ctx, req.Id)

	return &types.GetUserResp{
		Id:        user.Id,
		Email:     user.Email,
		Phone:     user.Phone,
		Password:  user.Password,
		Nickname:  user.Nickname,
		Gender:    user.Gender,
		Avatar:    user.Avatar,
		Role:      user.Role,
		CreatedAt: user.CreatedAt.String(),
		UpdatedAt: user.UpdatedAt.String(),
	}, error
}
