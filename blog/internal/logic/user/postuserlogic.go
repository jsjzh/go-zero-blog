package user

import (
	"context"

	"go-zero-blog/blog/internal/svc"
	"go-zero-blog/blog/internal/types"

	"github.com/zeromicro/go-zero/core/logx"
)

type PostUserLogic struct {
	logx.Logger
	ctx    context.Context
	svcCtx *svc.ServiceContext
}

func NewPostUserLogic(ctx context.Context, svcCtx *svc.ServiceContext) *PostUserLogic {
	return &PostUserLogic{
		Logger: logx.WithContext(ctx),
		ctx:    ctx,
		svcCtx: svcCtx,
	}
}

func (l *PostUserLogic) PostUser(req *types.PostUserReq) (resp *types.PostUserResp, err error) {
	// l.svcCtx.UserModel.Insert(l.ctx, req)

	return
}
