# frozen_string_literal: true
puts "Creating Ingredients..."

require 'open-uri'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'

ingredients_serialized = open(url).read
ingredients = JSON.parse(ingredients_serialized)

ingredients['drinks'].each do |ingredient|
  Ingredient.create(name: ingredient['strIngredient1'])
end

puts "✅"
puts "Creating Cocktails..."

Cocktail.create(name: 'Cosmopolitan')
Cocktail.create(name: 'Mojito')
Cocktail.create(name: 'Mai Tai')
Cocktail.create(name: 'Mint Julep')
Cocktail.create(name: 'Caipirinha')
Cocktail.create(name: 'Margarita')
Cocktail.create(name: 'Piña Colada')
Cocktail.create(name: 'Californication')
Cocktail.create(name: 'Long Island')
Cocktail.create(name: 'Apple Martini')
Cocktail.create(name: 'Manhattan')
Cocktail.create(name: 'Gin Tonic')
Cocktail.create(name: 'Bloody Mary')
Cocktail.create(name: 'Michelada')
Cocktail.create(name: 'Hennchata')
Cocktail.create(name: 'Greyhound')

puts "✅"
puts "Creating Images..."

file = URI.open('https://images.unsplash.com/photo-1512482017241-ccce0181a7fd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2089&q=80')
cocktail = Cocktail.find(1)
cocktail.photo.attach(io: file, filename: "cocktail_#{cocktail.id}.png", content_type: 'image/png')

puts "Created Image ##{cocktail.id}"

file = URI.open('https://images.unsplash.com/photo-1455621481073-d5bc1c40e3cb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2083&q=80')
cocktail = Cocktail.find(2)
cocktail.photo.attach(io: file, filename: "cocktail_#{cocktail.id}.png", content_type: 'image/png')

puts "Created Image ##{cocktail.id}"

file = URI.open('https://images.unsplash.com/photo-1514361726087-38371321b5cd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
cocktail = Cocktail.find(3)
cocktail.photo.attach(io: file, filename: "cocktail_#{cocktail.id}.png", content_type: 'image/png')

puts "Created Image ##{cocktail.id}"

file = URI.open('https://images.unsplash.com/photo-1470337458703-46ad1756a187?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1649&q=80')
cocktail = Cocktail.find(4)
cocktail.photo.attach(io: file, filename: "cocktail_#{cocktail.id}.png", content_type: 'image/png')

puts "Created Image ##{cocktail.id}"

file = URI.open('https://images.unsplash.com/photo-1536935338788-846bb9981813?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1586&q=80')
cocktail = Cocktail.find(5)
cocktail.photo.attach(io: file, filename: "cocktail_#{cocktail.id}.png", content_type: 'image/png')

puts "Created Image ##{cocktail.id}"

file = URI.open('https://images.unsplash.com/photo-1514361892635-6b07e31e75f9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
cocktail = Cocktail.find(6)
cocktail.photo.attach(io: file, filename: "cocktail_#{cocktail.id}.png", content_type: 'image/png')

puts "Created Image ##{cocktail.id}"

file = URI.open('https://images.unsplash.com/photo-1514362545857-3bc16c4c7d1b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
cocktail = Cocktail.find(7)
cocktail.photo.attach(io: file, filename: "cocktail_#{cocktail.id}.png", content_type: 'image/png')

puts "Created Image ##{cocktail.id}"

file = URI.open('https://images.unsplash.com/photo-1578664182263-c20a65fa927b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1651&q=80')
cocktail = Cocktail.find(8)
cocktail.photo.attach(io: file, filename: "cocktail_#{cocktail.id}.png", content_type: 'image/png')

puts "Created Image ##{cocktail.id}"

file = URI.open('https://images.unsplash.com/photo-1485265449635-ca623a55e95c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
cocktail = Cocktail.find(9)
cocktail.photo.attach(io: file, filename: "cocktail_#{cocktail.id}.png", content_type: 'image/png')

puts "Created Image ##{cocktail.id}"

file = URI.open('https://images.unsplash.com/photo-1542600176-9d2c4bb4bc1a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1601&q=80')
cocktail = Cocktail.find(10)
cocktail.photo.attach(io: file, filename: "cocktail_#{cocktail.id}.png", content_type: 'image/png')

puts "Created Image ##{cocktail.id}"

file = URI.open('https://images.unsplash.com/photo-1551751299-1b51cab2694c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1655&q=80')
cocktail = Cocktail.find(11)
cocktail.photo.attach(io: file, filename: "cocktail_#{cocktail.id}.png", content_type: 'image/png')

puts "Created Image ##{cocktail.id}"

file = URI.open('https://images.unsplash.com/photo-1558950334-8d04704332f8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
cocktail = Cocktail.find(12)
cocktail.photo.attach(io: file, filename: "cocktail_#{cocktail.id}.png", content_type: 'image/png')

puts "Created Image ##{cocktail.id}"

file = URI.open('https://images.unsplash.com/photo-1550555179-ba6377f4b5ea?ixlib=rb-1.2.1&auto=format&fit=crop&w=1652&q=80')
cocktail = Cocktail.find(13)
cocktail.photo.attach(io: file, filename: "cocktail_#{cocktail.id}.png", content_type: 'image/png')

puts "Created Image ##{cocktail.id}"

file = URI.open('https://images.unsplash.com/photo-1578664182391-acdf392468a0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
cocktail = Cocktail.find(14)
cocktail.photo.attach(io: file, filename: "cocktail_#{cocktail.id}.png", content_type: 'image/png')

puts "Created Image ##{cocktail.id}"

file = URI.open('https://images.unsplash.com/photo-1547495706-7485ef02d47d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
cocktail = Cocktail.find(15)
cocktail.photo.attach(io: file, filename: "cocktail_#{cocktail.id}.png", content_type: 'image/png')

puts "Created Image ##{cocktail.id}"

file = URI.open('https://images.unsplash.com/photo-1557395703-b5202a63d0f3?ixlib=rb-1.2.1&auto=format&fit=crop&w=1576&q=80')
cocktail = Cocktail.find(16)
cocktail.photo.attach(io: file, filename: "cocktail_#{cocktail.id}.png", content_type: 'image/png')

puts "Created Image ##{cocktail.id}"
