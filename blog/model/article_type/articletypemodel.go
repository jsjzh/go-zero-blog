package article_type

import "github.com/zeromicro/go-zero/core/stores/sqlx"

var _ ArticleTypeModel = (*customArticleTypeModel)(nil)

type (
	// ArticleTypeModel is an interface to be customized, add more methods here,
	// and implement the added methods in customArticleTypeModel.
	ArticleTypeModel interface {
		articleTypeModel
	}

	customArticleTypeModel struct {
		*defaultArticleTypeModel
	}
)

// NewArticleTypeModel returns a model for the database table.
func NewArticleTypeModel(conn sqlx.SqlConn) ArticleTypeModel {
	return &customArticleTypeModel{
		defaultArticleTypeModel: newArticleTypeModel(conn),
	}
}
