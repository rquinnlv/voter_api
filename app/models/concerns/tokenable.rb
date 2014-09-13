module Tokenable
	extend ActiveSupport::Concern

	included do 
		before_create :generate_token
	end

	protected

	def generate_token
		self.token = loop do 
			puts "Hello"
			random_token = SecureRandom.uuid
			break random_token unless self.class.exists?(token: random_token)
		end
	end
end