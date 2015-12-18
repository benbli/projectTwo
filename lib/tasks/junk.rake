namespace :junk do

# Generate an Admin


# Gererates fake guests
  desc 'generate many guests'
  task :guests => :environment do
    10.times do
      Guest.create({name: Faker::Name.name })
    end
  end

# Generate tables
  desc 'generate tables'
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
      1.times do
        User.create({username: "ADMIN", password: "nimba", account: "admin"})
      end
    end


  # Create a Chef username and password











end
