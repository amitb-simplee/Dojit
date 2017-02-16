class Post < ActiveRecord::Base
  has_many :comments
  belongs_to :user
  belongs_to :topic
  
  default_scope { order('created_at DESC') }
  
  attr_accessible :body, :title, :user, :topic
end
