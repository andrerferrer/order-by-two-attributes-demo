require 'faker'

# METHODS

def rand_id(model_class)
  rand( model_class.first.id..model_class.last.id )
end


puts "Cleaning the DB"
User.destroy_all
Availability.destroy_all
Meeting.destroy_all

times = ["08:00", "08:20", "08:40", "09:00", "09:20", "09:40", "10:00", "10:20", "10:40", "11:00", "11:20", "11:40", "12:00", "12:20", "12:40"]

puts "Creating Users ..."
10.times do |x|
  User.create!(
    email: "user@#{x}.com",
    name: x,
    password: "123456",
    company: ["Ministério da Eco", "AGU", "UNB"].sample
  )
end

puts "Creating availabilities ...."
100.times do
  Availability.create!(
    date: rand(1..7).day.from_now,
    time: times.sample,
    # time: Time.at(rand * Time.now.to_i),
    user_id: rand_id(User),
    scheduled: false
  )
end

puts "Creating Meetings"
100.times do
  user_id = rand_id(User)
  availability_id = rand_id(Availability)
  Meeting.create!(
    user_id: user_id,
    availability_id: availability_id,
    subject: 'impeachment'
  )
end
