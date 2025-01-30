# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Book.create!([
  { title: "The Great Gatsby", author: "F. Scott Fitzgerald", price: 10, published_date: "1925-04-10" },
  { title: "To Kill a Mockingbird", author: "Harper Lee", price: 12, published_date: "1960-07-11" },
  { title: "1984", author: "George Orwell", price: 9, published_date: "1949-06-08" },
  { title: "Pride and Prejudice", author: "Jane Austen", price: 8, published_date: "1813-01-28" },
  { title: "The Hobbit", author: "J.R.R. Tolkien", price: 14, published_date: "1937-09-21" },
  { title: "The Catcher in the Rye", author: "J.D. Salinger", price: 11, published_date: "1951-07-16" },
  { title: "The Lord of the Rings", author: "J.R.R. Tolkien", price: 20, published_date: "1954-07-29" },
  { title: "Animal Farm", author: "George Orwell", price: 7, published_date: "1945-08-17" },
])