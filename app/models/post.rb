class Post < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  has_many :votes, dependent: :destroy
  belongs_to :user
  belongs_to :topic
  
  default_scope { order('rank DESC') }
  validates :title, length: { minimum: 5 }, presence: true
  validates :body, length: { minimum: 20 }, presence: true
  validates :topic, presence: true
  validates :user, presence: true

  after_create :create_vote

  attr_accessible :body, :title, :user, :topic, :created_at

   def up_votes
     self.votes.where(value: 1).count
   end

   def down_votes
     self.votes.where(value: -1).count
   end

   def points
    self.votes.sum(:value)
   end

   def update_rank
     age_in_days = (created_at - Time.new(1970,1,1)) / (60 * 60 * 24) # 1 day in seconds
     new_rank = points + age_in_days
 
     update_attribute(:rank, new_rank)
   end

  private
  
  def markdown_title
	  render_as_markdown title
	end

	def markdown_body
	  render_as_markdown body
	end

  def create_vote
    up_votes
    self.save
  end
end
