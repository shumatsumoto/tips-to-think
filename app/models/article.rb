# == Schema Information
#
# Table name: articles
#
#  id         :bigint           not null, primary key
#  body       :text(65535)
#  name       :string(255)
#  title      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Article < ApplicationRecord
  has_many :comments, dependent: :delete_all
  has_many :article_tag_relations, dependent: :delete_all
  has_many :tags, through: :article_tag_relations
  validates :name, presence: true, length: { maximum: 20 }
  validates :title, presence: true, length: { maximum: 30 }
  validates :body, presence: true, length: { maximum: 1000 }
end
