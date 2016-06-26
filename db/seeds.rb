# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Tournament.create(name: 'Copa América', image_url: 'http://copacentenario.paninigroup.com/_Resources/Static/Packages/Panini.CopaAmerica/Images/logo_header_CA16.png')
team1 = Team.create(name: 'Colombia', image_url: 'http://fondopantalla.com.es/file/1760/2560x1600/crop/escudo-selecci%C3%B3n-colombia-de-f%C3%BAtbol.jpg')
team2 = Team.create(name: 'Estados Unidos', image_url: 'https://i.sharefa.st/QYpL0xJdqUFz.jpg')
team3 = Team.create(name: 'Chile', image_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5f/Logo_de_la_Federaci%C3%B3n_de_F%C3%BAtbol_de_Chile.png/200px-Logo_de_la_Federaci%C3%B3n_de_F%C3%BAtbol_de_Chile.png')
team4 = Team.create(name: 'Argentina', image_url: 'http://4.bp.blogspot.com/-tSw1ScsOvdI/Up5cWqOLirI/AAAAAAAACLc/c7kpNkpimHg/s1600/EscudoAFA2.png')
match1 = Match.create(date: '2016-06-14', stadium: 'Matute', tournament_id: 1, referee: 'Victor Garibay', name: 'Tercer lugar')
match2 = Match.create(date: '2016-06-15', stadium: 'Canchita de Renzo', tournament_id: 1, referee: 'Fabian Beltran', name: 'Final')
match3 = Match.create(date: '2016-06-20', stadium: 'Luren', tournament_id: 1, referee: 'Erick Ramos', name: 'Semifinal')
match4 = Match.create(date: '2016-06-14', stadium: 'Nacional', tournament_id: 1, referee: 'Alvaro Kfc', name: 'Semifinal')
matchdetail1 = MatchDetail.create(goals: 2, match: match1, team: team1)
matchdetail1 = MatchDetail.create(goals: 0, match: match1, team: team2)
matchdetail1 = MatchDetail.create(goals: 3, match: match2, team: team3)
matchdetail1 = MatchDetail.create(goals: 4, match: match2, team: team4)
matchdetail1 = MatchDetail.create(goals: 3, match: match3, team: team1)
matchdetail1 = MatchDetail.create(goals: 1, match: match3, team: team3)
matchdetail1 = MatchDetail.create(goals: 2, match: match4, team: team2)
matchdetail1 = MatchDetail.create(goals: 1, match: match4, team: team4)
