class User < ActiveRecord::Base
	has_many :issues, :elections
end
