class Comment < ActiveRecord::Base
  validates :date, presence: true
  validates :comment, presence: true
end
