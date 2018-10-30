30.times do
  User.create({
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: "#{SecureRandom.hex(3)}_#{Faker::Internet.email}",
    password: SecureRandom.hex(10),
  })
end

20.times do
	Group.create({
		name: Faker::Name.name,
		location: Faker::Address.city,
		users: User.all.sample(10)
	})
end	

15.times do
	Ingredient.create ({
		name: Faker::Food.unique.ingredient
	})
end

50.times do
	Recipe.create({
		name: "#{Faker::Color.color_name} #{Faker::Hipster.words} #{Faker::Ancient.god} #{Faker::Food.dish}",
		user: User.all.sample,
		group: Group.all.sample,
		instructions: "Mix the eggs"
	})
end

25.times do
	RecipeIngredient.create ({
		unit: Faker::Measurement.volume("all"),
		quantity: Faker::Number.decimal(2),
		recipe: Recipe.all.sample,
		ingredient: Ingredient.all.sample,
	})
end

25.times do
	Book.create({
		title: Faker::Book.unique.title,
		# need to add recipes to books
		recipes: Recipe.all.sample(6)
	})
end
