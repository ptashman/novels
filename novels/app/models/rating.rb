class Rating < ActiveRecord::Base
  belongs_to :novel
  belongs_to :user
  validates :stars, :novel_id, :user_id, presence: true
end
