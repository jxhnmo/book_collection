class Book < ApplicationRecord
    validates :title, presence: true
    validates :author, presence: true
    validates :price, presence: true
    validates :published_date, presence: true

    has_many :user_books
    has_many :users, through: :user_books
end
