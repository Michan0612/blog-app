# frozen_string_literal: true

# == Schema Information
#
# Table name: articles
#
#  id         :bigint           not null, primary key
#  title      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_articles_on_user_id  (user_id)
#
class Article < ApplicationRecord
  has_rich_text :content

  has_one_attached :eyecatch

  validates :title, presence: true
  validates :content, presence: true

  has_many :comment_article, dependent: :destroy
  has_many :likes, dependent: :destroy
  belongs_to :user

end
