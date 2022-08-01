package user

import (
	"context"

	"go-zero-blog/blog/internal/svc"
	"go-zero-blog/blog/internal/types"

	"github.com/zeromicro/go-zero/core/logx"
)

type PutUserLogic struct {
	logx.Logger
	ctx    context.Context
	svcCtx *svc.ServiceContext
}

func NewPutUserLogic(ctx context.Context, svcCtx *svc.ServiceContext) *PutUserLogic {
	return &PutUserLogic{
		Logger: logx.WithContext(ctx),
		ctx:    ctx,
		svcCtx: svcCtx,
	}
}

func (l *PutUserLogic) PutUser(req *types.PutUserReq) (resp *types.PutUserResp, err error) {
	// todo: add your logic here and delete this line

	return
}
