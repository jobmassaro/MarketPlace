class Sale < ActiveRecord::Base

	before_create :generate_guid
	
	belongs_to: content


	private

	def generate_guid
		delf.guid = SecureRandom.uuid()
	end

end
