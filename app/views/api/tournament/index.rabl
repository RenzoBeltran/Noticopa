collection :@tournaments
attributes :id, :name, :image_url
child(:matches) do
	attributes :id, :date, :stadium, :first_team, :second_team, :first_goals, :second_goals
end