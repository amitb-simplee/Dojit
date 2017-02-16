class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :user
  validates :body, length: { minimum: 5 }, presence: true
  attr_accessible :body, :post, :user
end
