class ArticleComments < ActiveRecord::Migration[6.0]
  def change
    drop_table :article_comments
  end
end
