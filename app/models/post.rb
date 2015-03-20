class Post < ActiveRecord::Base
  has_many :comments

  validates :title, presence: true
  validates :date, presence: true
  validates :blog, presence: true
end
