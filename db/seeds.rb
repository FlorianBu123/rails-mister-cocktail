require "open-uri"

Ingredient.destroy_all
Cocktail.destroy_all
Dose.destroy_all

Ingredient.create( name: "Mint")
Ingredient.create( name: "Orange Zest")
Ingredient.create( name: "Vodka")
Ingredient.create( name: "Whiskey")
Ingredient.create( name: "Tequila")
Ingredient.create( name: "Cranberry Juice")
Ingredient.create( name: "Cream")
Ingredient.create( name: "Basil")
Ingredient.create( name: "Gin")
Ingredient.create( name: "Absinthe")


file = URI.open('https://cdn.liquor.com/wp-content/uploads/2015/08/woodford_oldfashd_2_800x800.png')
cocktail = Cocktail.create(name: "Old Fashioned")
cocktail.photo.attach(io: file, filename: 'old-fashioned.png', content_type: 'image/png')

file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
cocktail2 = Cocktail.create(name: "Tequila Sunrise")
cocktail2.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
cocktail3 = Cocktail.create(name: "Bloody Mary")
cocktail3.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')