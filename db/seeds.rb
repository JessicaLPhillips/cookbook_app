30.times do
  User.create({
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: "#{SecureRandom.hex(3)}_#{Faker::Internet.email}",
    password: "password1",
  })
end

20.times do
	Group.create({
		name: Faker::Name.last_name,
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
		name: "#{Faker::Color.color_name} #{Faker::Hipster.word} #{Faker::Ancient.god} #{Faker::Food.dish}",
		user: User.all.sample,
		instructions: "Mix the eggs",
		description: "#{Faker::Seinfeld.quote}"
	})
end


25.times do
	Book.create({
		title: Faker::Book.unique.title,
		recipes: Recipe.all.sample(6)
	})
end
