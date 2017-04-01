class Image < ApplicationRecord
  has_many :posts, dependent: :destroy
  belongs_to :user
  
  mount_uploader :image, ImageUploader

  def average_score
  	unless self.posts.count == 0	
	  	@result = 0
	  	@score = 0
	  	self.posts.each do |post|
	  		@result = @result.to_f + post.rating.to_f
	  	end

	  	@score = @result / self.posts.count
	  	@score = sprintf("%.2f", @score)
  	end

  end
end
