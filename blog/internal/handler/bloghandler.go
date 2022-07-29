package handler

import (
	"net/http"

	"go-zero-blog/blog/internal/logic"
	"go-zero-blog/blog/internal/svc"
	"go-zero-blog/blog/internal/types"

	"github.com/zeromicro/go-zero/rest/httpx"
)

func BlogHandler(svcCtx *svc.ServiceContext) http.HandlerFunc {
	return func(w http.ResponseWriter, r *http.Request) {
		var req types.Request
		if err := httpx.Parse(r, &req); err != nil {
			httpx.Error(w, err)
			return
		}

		l := logic.NewBlogLogic(r.Context(), svcCtx)
		resp, err := l.Blog(&req)
		if err != nil {
			httpx.Error(w, err)
		} else {
			httpx.OkJson(w, resp)
		}
	}
}