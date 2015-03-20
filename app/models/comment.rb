class Comment < ActiveRecord::Base
  belongs_to :post

  validates :date, presence: true
  validates :comment, presence: true
end
