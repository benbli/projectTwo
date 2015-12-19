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

  # Create an Admin with username and password
    desc 'create an admin account'
    task :users => :environment do
      User.create({username: "ADMIN", password: "nimba", account: "admin"})
    end


  # Create a Chef username and password











end
