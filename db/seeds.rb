# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

addresses = "Emporio La Granel Av. Salvador 757, Providencia
Un Cuarto a Granel Moneda 3156, Santiago
Espacio Granel, Las Condes
Kulko, Las Condes
Sin Envase  Irarrázaval 3620, Ñuñoa
Circularshop, Chicureo
Cococacao, Manuel Rodríguez 3150, Maipú
MiaSoul Market Nueva Providencia 2060 Local 8 Providencia
Mundo Natural Paseo Los Trapenses, Lo Barnechea
La Balanza Antupiren 9301, Local21, Peñalolén
Alma Zero Av. Apoquindo 7942, Torre 1, Loc. 8, Las Condes"

Store.destroy_all
addresses = addresses.split("\n")
addresses.each do |addresses|
    Store.create!(name: Faker::Name.name, address: addresses)
    sleep 1
end

