# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Book.find_or_create_by!(title: "The Great Gatsby") do |book|
    book.author = "F. Scott Fitzgerald"
    book.price = 10
    book.published_date = "1925-04-10"
  end
  
  Book.find_or_create_by!(title: "To Kill a Mockingbird") do |book|
    book.author = "Harper Lee"
    book.price = 12
    book.published_date = "1960-07-11"
  end
  
  Book.find_or_create_by!(title: "1984") do |book|
    book.author = "George Orwell"
    book.price = 9
    book.published_date = "1949-06-08"
  end
  
  Book.find_or_create_by!(title: "Pride and Prejudice") do |book|
    book.author = "Jane Austen"
    book.price = 8
    book.published_date = "1813-01-28"
  end
  
#   Book.find_or_create_by!(title: "The Hobbit") do |book|
#     book.author = "J.R.R. Tolkien"
#     book.price = 14
#     book.published_date = "1937-09-21"
#   end
  
#   Book.find_or_create_by!(title: "The Catcher in the Rye") do |book|
#     book.author = "J.D. Salinger"
#     book.price = 11
#     book.published_date = "1951-07-16"
#   end
  
#   Book.find_or_create_by!(title: "The Lord of the Rings") do |book|
#     book.author = "J.R.R. Tolkien"
#     book.price = 20
#     book.published_date = "1954-07-29"
#   end
  
#   Book.find_or_create_by!(title: "Animal Farm") do |book|
#     book.author = "George Orwell"
#     book.price = 7
#     book.published_date = "1945-08-17"
#   end
  