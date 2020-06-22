# == Schema Information
#
# Table name: article_comments
#
#  id         :bigint           not null, primary key
#  content    :text             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  article_id :bigint           not null
#
# Indexes
#
#  index_article_comments_on_article_id  (article_id)
#
class ArticleComment < ApplicationRecord
end
