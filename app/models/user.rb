class User < ApplicationRecord  
  has_many :posts, dependent: :destroy 

  has_many :critiques, dependent: :destroy

  validates :name, presence: true

  EMAIL_FORMAT = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :email, presence: true, format: { with: EMAIL_FORMAT }, uniqueness: true

  before_save { self.email = email.downcase }

  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }, allow_nil: true


  has_one_attached :image
end
