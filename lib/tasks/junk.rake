namespace :junk do

# Gererates faker guests
  desc 'Generate many guests'
  task :guests => :environment do
    10.times do
      Guest.create({name: Faker::Name.name })
    end
  end

# Generate tables
  desc 'Generate tables'
  task :tables => :environment do
    (1..8).each do |x|
      Table.create({seat_numbers: 1, name: "BAR#{x}"})
    end
    (1..4).each do |x|
      Table.create({seat_numbers: 2, name: "A#{x}"})
    end
    (1..4).each do |x|
      Table.create({seat_numbers: 4, name: "C#{x}"})
    end
    (1..4).each do |x|
      Table.create({seat_numbers: 6, name: "D#{x}"})
    end
  end

  desc 'Create Admin accounts'
  task :users => :environment do
    User.create({username: "admin", password_digest: "admin", account: "admin"})
    User.create({username: "chef", password_digest: "chef", account: "chef"})
  end

# Create junk food
  desc 'Create Dishes'
  task :dishes => :environment do
    Dish.create({name: "Soup", price: 23})
    Dish.create({name: "Banana", price: 3})
    Dish.create({name: "Chicken Parm", price: 24})
  end









end
