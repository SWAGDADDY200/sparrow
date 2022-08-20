class Post < ApplicationRecord



  validates :body, length: { minimum: 1, maximum: 300 }
  validates :post, presence: true
  validates :author, presence: true
end
