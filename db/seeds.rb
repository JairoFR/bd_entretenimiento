 # This file should ensure the existence of records required to run the application in every environment (production,
 # development, test). The code here should be idempotent so that it can be executed at any point in every environment.
 # The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
 #
 # Example:
 #
 #   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
 #     MovieGenre.find_or_create_by!(name: genre_name)
 #   end
 # Series.create(name: "Breaking Bad", synopsis: "Un profesor de Química de secundaria con cáncer terminal se asocia a un exestudiante para asegurar el futuro de su familia al fabricar y vender metanfetamina", director: "Vince Gilligan")
 # DocumentaryFilm.create(name: "Hongos fantasticos", synopsis: "El mundo mágico de los hongos y su poder para curar, mantener y contribuir a la regeneración de la vida en la Tierra.", director: "Louie Schwartzberg")

 10.times do
  serie = Series.create(
    name: Faker::Name.name,   # Genera un nombre de usuario aleatorio
    synopsis: Faker::Lorem.sentence,        # Genera un descripcion aleatorio (oración)
    director: Faker::Name.name
  )
 end

 10.times do
  movie = Movie.create(
    name: Faker::Movie.title,   # Genera un nombre de usuario aleatorio
    synopsis: Faker::Lorem.sentence,        # Genera un descripcion aleatorio (oración)
    director: Faker::Name.name
  )
 end

 10.times do
  doc = DocumentaryFilm.create(
    name: Faker::Movie.title,   # Genera un nombre de usuario aleatorio
    synopsis: Faker::Lorem.sentence,        # Genera un descripcion aleatorio (oración)
    director: Faker::Name.name
  )
 end
