# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
author = Author.create(name: "Raphael Jambalos", kind: "Programmer")
post = Post.create(title: "Redis", body: "This is a in-memory database often used for caching.", author_id: author.id)
post = Post.create(title: "PostgreSQL", body: "This is a transactional database used for transactions", author_id: author.id)
post = Post.create(title: "DynamoDB", body: "This is a NoSQL database used for concurrent workloads.", author_id: author.id)