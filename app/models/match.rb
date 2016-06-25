class Match < ActiveRecord::Base
	has_many :match_details
	belongs_to :tournament
end
