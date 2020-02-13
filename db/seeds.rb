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
