# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

Movie.find_or_create_by!(title: "Aladdin") do |movie|
    movie.director = "Guy Ritchie"
    movie.rating = "PG"
end
  
Movie.find_or_create_by!(title: "The Lion King") do |movie|
    movie.director = "Jon Favreau"
    movie.rating = "PG"
end
  
Movie.find_or_create_by!(title: "Inception") do |movie|
    movie.director = "Christopher Nolan"
    movie.rating = "PG-13"
end