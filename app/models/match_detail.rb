class MatchDetail < ActiveRecord::Base
  belongs_to :Match
  belongs_to :Team
end
