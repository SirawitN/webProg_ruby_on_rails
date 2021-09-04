class User < ApplicationRecord
	has_many :posts

	def displayPosts
		return self.posts
	end

end
