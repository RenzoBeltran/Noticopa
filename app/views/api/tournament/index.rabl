collection :@tournaments
attributes :id, :name, :image_url
child(:matches) do
	attributes :id, :date, :stadium, :referee, :name, :resultado, :first_team, :second_team, :first_goals, :second_goals, :image_url_1, :image_url_2
end