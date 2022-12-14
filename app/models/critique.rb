class Critique < ApplicationRecord
  belongs_to :post
  belongs_to :user

  validates :comment, length: { minimum: 1, maximum: 300 }
  validates :rating, numericality: { only_integer: true }
end
