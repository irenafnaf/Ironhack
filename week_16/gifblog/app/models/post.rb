class Post < ActiveRecord::Base

	def upvote
		votes = self.nov

		update(nov: votes + 1)
	end

	def downvote
		votes = self.nov

		update(nov: votes - 1)
	end

	def self.low_rated_index
		self.where("votes < 5")
	end

	def self.sort_by_date
		self.order(:created_at)
	end

	def self.sort_by_votes
		self.order(nov: :desc)
	end
end
