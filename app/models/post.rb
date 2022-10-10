class Post < ApplicationRecord
  belongs_to :user
  
  has_rich_text :body
  has_many_attached :images
  has_many :critiques, dependent: :destroy
  has_one :rating

  validates :body, length: { minimum: 1, maximum: 1000 }
  # validates :author, presence: true
end
