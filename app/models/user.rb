class User < ActiveRecord::Base
  has_many :ratings

  validates :name, presence: true, length: { maximum: 50 }
  email_format = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :email, presence: true, format: { with: email_format }, uniqueness: { case_sensitive: false }
end