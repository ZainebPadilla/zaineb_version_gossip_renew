# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'faker'

Gossip.destroy_all
User.destroy_all
City.destroy_all

# Création de quelques villes
city1 = City.create!(name: "Paris", zip_code: "75000")
city2 = City.create!(name: "Lyon", zip_code: "69000")
city3 = City.create!(name: "Marseille", zip_code: "13000")
city4 = City.create!(name: "Bordeaux", zip_code: "33000")
city5 = City.create!(name: "Toulouse", zip_code: "31000")

# Création d'exemples d'utilisateurs associés à des villes
user1 = User.create!(first_name: "Alice", last_name: "Dupont", email: "alice@example.com", age: 25, description: "Aime les potins.", city: city1)
user2 = User.create!(first_name: "Bob", last_name: "Martin", email: "bob@example.com", age: 30, description: "Toujours à l'affût des dernières nouvelles.", city: city2)
user3 = User.create!(first_name: "Chloé", last_name: "Durand", email: "chloe@example.com", age: 27, description: "Ne rate jamais un scoop.", city: city3)
user4 = User.create!(first_name: "David", last_name: "Leroy", email: "david@example.com", age: 35, description: "Connaît tout le monde dans le quartier.", city: city4)
user5 = User.create!(first_name: "Emma", last_name: "Moreau", email: "emma@example.com", age: 28, description: "Raconte les meilleures histoires.", city: city5)

# Création de gossips associés aux utilisateurs (auteurs)
Gossip.create!(title: "Les derniers potins", content: "Il paraît que notre voisin a adopté un chien !", user: user1)
Gossip.create!(title: "Nouvelle boutique", content: "Un café vient d'ouvrir au coin de la rue, le café 'Au Chat Pitre'.", user: user2)
Gossip.create!(title: "Promotion surprise", content: "La directrice a reçu une promotion, elle partira pour une autre ville bientôt.", user: user3)
Gossip.create!(title: "Soirée de quartier", content: "Une soirée est organisée au centre communautaire samedi prochain ! Tout le monde est invité.", user: user4)
Gossip.create!(title: "Nouveau couple en vue", content: "On a aperçu nos deux voisins à un dîner ensemble hier soir... affaire à suivre !", user: user5)
