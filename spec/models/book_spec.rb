require 'rails_helper'

RSpec.describe Book, type: :model do
    describe "Validations" do
        it "is valid with a title, author, price, and year_published" do
            book = Book.new(
                title: "Title",
                author: "Author",
                price: 9.99,
                published_date: Date.new(2025)
                )
            expect(book).to be_valid
        end

        it "is invalid without a title" do
            book = Book.new(
                title: nil,
                author: "Author",
                price: 9.99,
                published_date: Date.new(2025)
            )
            expect(book).to_not be_valid
            expect(book.errors.messages[:title]).to include("can't be blank")
        end

        it "is invalid without an author" do
            book = Book.new(
                title: "Title",
                author: nil,
                price: 9.99,
                published_date: Date.new(2025)
            )
            expect(book).to_not be_valid
            expect(book.errors.messages[:author]).to include("can't be blank")
        end

        it "is invalid without a price" do
            book = Book.new(
                title: "Title",
                author: "Author",
                price: nil,
                published_date: Date.new(2025)
            )
            expect(book).to_not be_valid
            expect(book.errors.messages[:price]).to include("can't be blank")
        end

        it "is invalid without a published date" do
            book = Book.new(
                title: "Title",
                author: "Author",
                price: 9.99,
                published_date: nil
            )
            expect(book).to_not be_valid
            expect(book.errors.messages[:published_date]).to include("can't be blank")
        end
    end
end