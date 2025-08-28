# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
author1 = Author.create!(name: "J.K. Rowling")
author2 = Author.create!(name: "George R.R. Martin")

Book.create!(title: "Harry Potter and the Sorcerer's Stone", author: author1)
Book.create!(title: "Harry Potter and the Chamber of Secrets", author: author1)
Book.create!(title: "A Game of Thrones", author: author2)
Book.create!(title: "A Clash of Kings", author: author2)
Book.create!(title: "A Storm of Swords", author: author2)
