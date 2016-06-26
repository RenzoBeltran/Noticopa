# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Tournament.create(name: 'Copa América', image_url: 'http://copacentenario.paninigroup.com/_Resources/Static/Packages/Panini.CopaAmerica/Images/logo_header_CA16.png')
team1 = Team.create(name: 'Colombia')
team2 = Team.create(name: 'Estados Unidos')
team3 = Team.create(name: 'Chile')
team4 = Team.create(name: 'Argentina')
match1 = Match.create(date: '2016-06-14', stadium: 'Matute', tournament_id: 1)
match2 = Match.create(date: '2016-06-15', stadium: 'Canchita de Renzo', tournament_id: 1)
match3 = Match.create(date: '2016-06-20', stadium: 'Luren', tournament_id: 1)
match4 = Match.create(date: '2016-06-14', stadium: 'Nacional', tournament_id: 1)
matchdetail1 = MatchDetail.create(goals: 2, referee: 'Victor Garibay', match: match1, team: team1)
matchdetail1 = MatchDetail.create(goals: 0, referee: 'Fabian Beltran', match: match1, team: team2)
matchdetail1 = MatchDetail.create(goals: 3, referee: 'Erick Ramos', match: match2, team: team3)
matchdetail1 = MatchDetail.create(goals: 4, referee: 'Alvaro Kfc', match: match2, team: team4)
matchdetail1 = MatchDetail.create(goals: 3, referee: 'Almendra Cadenas', match: match3, team: team1)
matchdetail1 = MatchDetail.create(goals: 1, referee: 'Luis Urbano', match: match3, team: team3)
matchdetail1 = MatchDetail.create(goals: 2, referee: 'Armando Maradona', match: match4, team: team2)
matchdetail1 = MatchDetail.create(goals: 1, referee: 'Roberto Carlos', match: match4, team: team4)
