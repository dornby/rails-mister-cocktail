# frozen_string_literal: true

require 'open-uri'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'

ingredients_serialized = open(url).read
ingredients = JSON.parse(ingredients_serialized)

ingredients['drinks'].each do |ingredient|
  Ingredient.create(name: ingredient['strIngredient1'])
end

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

file = URI.open('https://images.unsplash.com/photo-1470337458703-46ad1756a187?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1498&q=80')
cocktail = Cocktail.find(1)
cocktail.photo.attach(io: file, filename: "cocktail_#{cocktail.id}.png", content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1536935338788-846bb9981813?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1372&q=80')
cocktail = Cocktail.find(2)
cocktail.photo.attach(io: file, filename: "cocktail_#{cocktail.id}.png", content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1546171753-97d7676e4602?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80')
cocktail = Cocktail.find(3)
cocktail.photo.attach(io: file, filename: "cocktail_#{cocktail.id}.png", content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1556855810-ac404aa91e85?ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80')
cocktail = Cocktail.find(4)
cocktail.photo.attach(io: file, filename: "cocktail_#{cocktail.id}.png", content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1550426735-c33c7ce414ff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=640&q=80')
cocktail = Cocktail.find(5)
cocktail.photo.attach(io: file, filename: "cocktail_#{cocktail.id}.png", content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1514362545857-3bc16c4c7d1b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80')
cocktail = Cocktail.find(6)
cocktail.photo.attach(io: file, filename: "cocktail_#{cocktail.id}.png", content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1551538827-9c037cb4f32a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=802&q=80')
cocktail = Cocktail.find(7)
cocktail.photo.attach(io: file, filename: "cocktail_#{cocktail.id}.png", content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1562708294-4df93280352d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=666&q=80')
cocktail = Cocktail.find(8)
cocktail.photo.attach(io: file, filename: "cocktail_#{cocktail.id}.png", content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1500217052183-bc01eee1a74e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80')
cocktail = Cocktail.find(9)
cocktail.photo.attach(io: file, filename: "cocktail_#{cocktail.id}.png", content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1558645836-e44122a743ee?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80')
cocktail = Cocktail.find(10)
cocktail.photo.attach(io: file, filename: "cocktail_#{cocktail.id}.png", content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1563223771-5fe4038fbfc9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80')
cocktail = Cocktail.find(11)
cocktail.photo.attach(io: file, filename: "cocktail_#{cocktail.id}.png", content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1556679343-c7306c1976bc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80')
cocktail = Cocktail.find(12)
cocktail.photo.attach(io: file, filename: "cocktail_#{cocktail.id}.png", content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1514361892635-6b07e31e75f9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80')
cocktail = Cocktail.find(13)
cocktail.photo.attach(io: file, filename: "cocktail_#{cocktail.id}.png", content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1555766720-1e727844cc8f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=802&q=80')
cocktail = Cocktail.find(14)
cocktail.photo.attach(io: file, filename: "cocktail_#{cocktail.id}.png", content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1549746423-e5fe9cafded8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80')
cocktail = Cocktail.find(15)
cocktail.photo.attach(io: file, filename: "cocktail_#{cocktail.id}.png", content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1553607558-455f4310f6ec?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=672&q=80')
cocktail = Cocktail.find(16)
cocktail.photo.attach(io: file, filename: "cocktail_#{cocktail.id}.png", content_type: 'image/png')
