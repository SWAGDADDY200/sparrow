class Post < ApplicationRecord
  has_rich_text :body
  validates :body, length: { minimum: 1, maximum: 300 }
  validates :author, presence: true
end

def published?
  post_id?
end
