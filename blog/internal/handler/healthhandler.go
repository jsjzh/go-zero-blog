package handler

import (
	"net/http"

	"go-zero-blog/blog/internal/logic"
	"go-zero-blog/blog/internal/svc"

	"github.com/zeromicro/go-zero/rest/httpx"
)

func HealthHandler(svcCtx *svc.ServiceContext) http.HandlerFunc {
	return func(w http.ResponseWriter, r *http.Request) {
		l := logic.NewHealthLogic(r.Context(), svcCtx)
		resp, err := l.Health()
		if err != nil {
			httpx.Error(w, err)
		} else {
			httpx.OkJson(w, resp)
		}
	}
}
