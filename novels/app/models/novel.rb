class Novel < ActiveRecord::Base
  belongs_to :author
  has_many :ratings
  validates :title, presence: true
end
