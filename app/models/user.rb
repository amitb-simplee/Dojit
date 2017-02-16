class User < ActiveRecord::Base
  has_many :posts
  has_many :comments
  has_many :votes
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
  # attr_accessible :title, :body
 attr_accessible :name, :email, :password, :password_confirmation, :posts, :comments, :role, :remember_me
 
 def admin?
   role == 'admin'
 end
 
 def moderator?
   role == 'moderator'
 end
end
