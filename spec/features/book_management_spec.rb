require 'rails_helper'

RSpec.describe "Book Management", type: :feature do
    it "displays a success flash notice when a book is added" do
        visit new_book_path
        fill_in "Title", with: "New Book Title"
        fill_in "Author", with: "New Book Author"
        select '2025', from: "book_published_date_1i" 
        select 'January', from: "book_published_date_2i" 
        select '1', from: "book_published_date_3i" 
        fill_in "Price", with: 9.99
        click_on "Create Book"

        expect(page).to have_content("Book was successfully created.")
    end

    it "displays an error when creating a book without a title" do
        visit new_book_path
        fill_in "Author", with: "New Book Author"
        select '2025', from: "book_published_date_1i" 
        select 'January', from: "book_published_date_2i" 
        select '1', from: "book_published_date_3i" 
        fill_in "Price", with: 9.99
        click_on "Create Book"

        expect(page).to have_content("Title can't be blank")
    end

    it "displays an error when creating a book without an author" do
        visit new_book_path
        fill_in "Title", with: "New Book Title"
        select '2025', from: "book_published_date_1i" 
        select 'January', from: "book_published_date_2i" 
        select '1', from: "book_published_date_3i" 
        fill_in "Price", with: 9.99
        click_on "Create Book"

        expect(page).to have_content("Author can't be blank")
    end

    it "displays an error when creating a book without a published date" do
        visit new_book_path
        fill_in "Title", with: "New Book Title"
        fill_in "Author", with: "New Book Author"
        fill_in "Price", with: 9.99
        click_on "Create Book"

        expect(page).to have_content("Published date can't be blank")
    end

    it "displays an error when creating a book without a price" do
        visit new_book_path
        fill_in "Title", with: "New Book Title"
        fill_in "Author", with: "New Book Author"
        select '2025', from: "book_published_date_1i" 
        select 'January', from: "book_published_date_2i" 
        select '1', from: "book_published_date_3i" 
        click_on "Create Book"

        expect(page).to have_content("Price can't be blank")
    end
end