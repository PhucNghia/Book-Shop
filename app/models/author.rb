class Author < ApplicationRecord
  has_many :book_authors
  has_many :books, through: :book_authors

  validates :name, length: {maximum: Settings.size_name}, presence: true

  scope :infor_author, ->{select :id, :name}
end
