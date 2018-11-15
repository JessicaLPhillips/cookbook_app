10.times do
	user = User.create({
	    first_name: Faker::Name.first_name,
	    last_name: Faker::Name.last_name,
	    email: "#{SecureRandom.hex(3)}_#{Faker::Internet.email}",
	    password: "password1",
	  })

	5.times do
		recipe = Recipe.create({
			name: "#{Faker::Color.color_name.titleize} #{Faker::Food.dish}",
			user: user,
			instructions: "#{Faker::Lorem.paragraph} #{Faker::Lorem.paragraph} #{Faker::Lorem.paragraph} #{Faker::Lorem.paragraph}",
			description: Faker::Food.description
		})

		10.times do 
			ingredient = Ingredient.create(
				name:Faker::Food.ingredient,
				quantity:Faker::Food.measurement
			)
			recipe.ingredients << ingredient
		end
	end
end

5.times do
	group = Group.create({
		name: Faker::Name.last_name,
		location: Faker::Address.city,
		users: User.all.sample(5)
	})

	group.recipes << group.users.map { |user| user.recipes.sample(2) }
end

5.times do
	Book.create({
		title: Faker::Book.unique.title,
		recipes: Recipe.all.sample(6)
	})
end
