collection :@tournaments
attributes :id, :name, :image_url
child(:matches) do
	attribute :id
end