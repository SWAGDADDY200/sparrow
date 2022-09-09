class Post < ApplicationRecord
  has_rich_text :body
  validates :body, length: { minimum: 1, maximum: 300 }
  validates :author, presence: true
  has_many_attached :image
end

def published?
  post_id?
end
