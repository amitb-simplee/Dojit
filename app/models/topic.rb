class Topic < ActiveRecord::Base
  has_many :posts, dependent: :destroy
  attr_accessible :description, :name, :public

  scope :visible_to, -> (user) { user ? all : self.publicly_viewable }
  scope :publicly_viewable, -> { where(public: true) }
  scope :privately_viewable, -> { where(public: false) }
end
