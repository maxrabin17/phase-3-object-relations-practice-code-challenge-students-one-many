puts "Clearing old data..."
Cohort.destroy_all
Student.destroy_all

# This will create 5 cohorts using a random date
puts "Seeding cohorts..."
c1 = Cohort.create(
  name: Faker::Name.last_name,
  current_mod: rand(1..5)
)
c2 = Cohort.create(
  name: Faker::Name.last_name,
  current_mod: rand(1..5)
)
c3 = Cohort.create(
  name: Faker::Name.last_name,
  current_mod: rand(1..5)
)
c4 = Cohort.create(
  name: Faker::Name.last_name,
  current_mod: rand(1..5)
)
c5 = Cohort.create(
  name: Faker::Name.last_name,
  current_mod: rand(1..5)
)

puts "Seeding students..."
# TODO: create seed data for students
# check your schema and make sure to create students with all the necessary data
  10.times do
    Student.create(name: Faker::Name.first_name, age: rand(18..99), cohort_id: rand(1..5))
  end
puts "Done!"