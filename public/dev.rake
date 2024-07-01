task :sample_data do
  p "Creating sample data"

  12.times do
    name = Faker::Name.first_name
    User.create(
      email: "#{name}@example.com",
      password: "password",
      username: name,
      private: [true, false].sample,
    )
  end
end
