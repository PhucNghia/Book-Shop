class Publisher < ApplicationRecord
  has_many :books
  validates :name, length: {maximum: Settings.size_name}, presence: true
  scope :infor_publisher, ->{select :id, :name}
end
