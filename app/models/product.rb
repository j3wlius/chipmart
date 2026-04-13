class Product < ApplicationRecord
  belongs_to :category
  validates :product_name, presence: true, length: { minimum: 4, maximum: 50 }
  validates :stock, numericality: { only_integer: true, allow_nil: true }, presence: true
  validates :price, numericality: { only_integer: true, allow_nil: false }, presence: true
  validates :description, presence: true, length: { minimum: 10 }
  validates :category, presence: true
end
