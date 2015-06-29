class Author < ActiveRecord::Base
  has_many :novels
  validates :name, presence: true
end
