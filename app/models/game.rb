class Game < ActiveRecord::Base
	validates :ref_id, presence: true, uniqueness: true
	validates :curr_suggestion, presence: true
	validates :time, presence: true
	before_create :create_ref_id

	def Game.search(search)
  	self.find(ref_id: search)
	end

	def Game.new_ref_id
		SecureRandom.hex(6).to_s
	end

	private
		def create_ref_id
			self.ref_id = Game.new_ref_id.to_s
		end
end
