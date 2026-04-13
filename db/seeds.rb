# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Running categories seeders..."

categories_seeders = [ "Accessories", "Electronics", "Home & Kitchen", "Beauty & Cosmetics", "Games", "Audio" ]

categories_seeders.each do |cs|
  Category.find_or_create_by!(category_name: cs)
end

puts "========== Categories successfully seeded ==========="

puts "Running products seeders..."

sample_products = [
  {
    product_name: "Wireless Mouse",
    price: 2500,
    stock: 100,
    description: "Ergonomic wireless mouse with USB receiver.",
    category_id: 2
  },
  {
    product_name: "Mechanical Keyboard",
    price: 8900,
    stock: 40,
    description: "RGB backlit mechanical keyboard with blue switches.",
    category_id: 2
  },
  {
    product_name: "USB-C Charger 65W",
    price: 3999,
    stock: 75,
    description: "Fast charging USB-C power adapter for laptops and phones.",
    category_id: 3
  },
  {
    product_name: "27-inch Monitor",
    price: 2299900,
    stock: 20,
    description: "Full HD IPS monitor with ultra-thin bezels.",
    category_id: 3
  },
  {
    product_name: "External SSD 1TB",
    price: 11900,
    stock: 35,
    description: "Portable high-speed external solid state drive.",
    category_id: 2
  },
  {
    product_name: "Bluetooth Headphones",
    price: 5990,
    stock: 60,
    description: "Noise-cancelling over-ear wireless headphones.",
    category_id: 7
  }
]

sample_products.each do |sp|
  Product.find_or_create_by!(sp)
end

puts "====== successfully seeded ===== "
