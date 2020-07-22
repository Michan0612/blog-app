require 'rails_helper'

RSpec.describe 'Api::CommentArticles', type: :request do
  let!(:user) { create(:user) }
  let!(:article) { create(:article, user: user) }
  let!(:comment_article) { create_list(:comment_article, 3, article: article) }

  describe 'GET /api/comment_articles' do
    it '200 Status' do
      get api_comment_articles_path(article_id: article.id)
      expect(response).to have_http_status(200)

      body = JSON.parse(response.body)
      expect(body.length).to eq 3
      expect(body[0]['content']).to eq comment_article.first.content
      expect(body[1]['content']).to eq comment_article.second.content
      expect(body[2]['content']).to eq comment_article.third.content
    end
  end
end
