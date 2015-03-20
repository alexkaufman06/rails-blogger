class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :date, presence: true
  validates :blog, presence: true
end
