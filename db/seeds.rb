# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

names = "Emporio La Granel
Un Cuarto a Granel
Espacio Granel
Kulko
Sin Envase
Circularshop 
Cococacao
MiaSoul Market
Mundo Natural
La Balanza
Alma Zero"

addresses = "Av. Salvador 757, Providencia
 Moneda 3156, Santiago
 Las Condes
 Las Condes
 Irarrázaval 3620, Ñuñoa
 Chicureo
 Manuel Rodríguez 3150, Maipú
 Nueva Providencia 2060 Local 8 Providencia
 Paseo Los Trapenses, Lo Barnechea
 Antupiren 9301, Local21, Peñalolén
 Av. Apoquindo 7942, Torre 1, Loc. 8, Las Condes"

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?