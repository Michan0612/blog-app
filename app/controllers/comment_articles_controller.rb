class CommentArticlesController < ApplicationController
    def new
      article = Article.find(params[:article_id])
      @comment = article.comment_article.build
    end

    def index
      article = Article.find(params[:article_id])
      comments = article.comment_article
      render json: comments
    end
  
    def create
      article = Article.find(params[:article_id])
      @comment = article.comment_article.build(comment_params)
      @comment.save!

      render json: @comment
    end
  
    private
    def comment_params
      params.require(:comment_article).permit(:content)
    end
end