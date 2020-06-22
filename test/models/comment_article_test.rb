# == Schema Information
#
# Table name: comment_articles
#
#  id         :bigint           not null, primary key
#  content    :text             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  article_id :bigint           not null
#
# Indexes
#
#  index_comment_articles_on_article_id  (article_id)
#
require 'test_helper'

class CommentArticleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
