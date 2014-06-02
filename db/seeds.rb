require 'faker'

# Create Products
50.times do
  Product.create(
    name:  Faker::Lorem.sentence,
  )
end
products = Product.all

# Create Reviews
100.times do
  Review.create(
    product: products.sample,
    body: Faker::Lorem.paragraph
  )
end

puts "Seed finished"
puts "#{Product.count} Products created"
puts "#{Review.count} Reviews created"