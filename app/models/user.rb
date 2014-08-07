class User < ActiveRecord::Base
	has_many :issues
	has_many :elections
	has_many :candidates
end
