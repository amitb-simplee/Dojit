class User < ActiveRecord::Base
  has_many :posts
  has_many :comments
  has_many :votes
  has_many :favorites, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
  # attr_accessible :title, :body
 attr_accessible :name, :email, :password, :password_confirmation, :posts, :comments, :role, :remember_me, :favorites
 
 def admin?
   role == 'admin'
 end
 
 def moderator?
   role == 'moderator'
 end

 def favorited(post)
   favorites.where(post_id: post.id).first
 end
end
