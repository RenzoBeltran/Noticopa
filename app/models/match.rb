class Match < ActiveRecord::Base
	has_many :match_details
	has_many :teams, through: :match_details
	belongs_to :tournament
	def first_team
		self.teams.first.name rescue nil
	end

	def second_team
		self.teams.second.name rescue nil
	end

	def first_goals
		self.match_details.first.goals rescue nil
	end	

	def second_goals
		self.match_details.second.goals rescue nil
	end	
end