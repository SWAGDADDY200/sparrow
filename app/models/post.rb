class Post < ApplicationRecord
  belongs_to :user
  
  has_rich_text :body
  has_many_attached :image
  has_many :critiques, dependent: :destroy

  validates :body, length: { minimum: 1, maximum: 300 }
  # validates :author, presence: true
end
