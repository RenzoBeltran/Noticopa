class Team < ActiveRecord::Base
	has_many :match_details
end
