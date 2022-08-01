package user

import (
	"net/http"

	"go-zero-blog/blog/internal/logic/user"
	"go-zero-blog/blog/internal/svc"
	"go-zero-blog/blog/internal/types"

	"github.com/zeromicro/go-zero/rest/httpx"
)

func PutUserHandler(svcCtx *svc.ServiceContext) http.HandlerFunc {
	return func(w http.ResponseWriter, r *http.Request) {
		var req types.PutUserReq
		if err := httpx.Parse(r, &req); err != nil {
			httpx.Error(w, err)
			return
		}

		l := user.NewPutUserLogic(r.Context(), svcCtx)
		resp, err := l.PutUser(&req)
		if err != nil {
			httpx.Error(w, err)
		} else {
			httpx.OkJson(w, resp)
		}
	}
}
