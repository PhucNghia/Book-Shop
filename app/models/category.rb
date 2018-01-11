class Category < ApplicationRecord
  has_many :books
  validates :name, length: {maximum: Settings.size_name}, presence: true
  scope :infor_category, ->{select :id, :name}
end
