# require 'faker'

# puts 'Cleaning db ...'
# Client.destroy_all
# Spiral.destroy_all
# puts 'Creating 10 fake clients...'
# puts 'Clients ...'
# 10.times do
#   client = Client.new(
#     name:    Faker::Name.first_name,
#     name1:    Faker::Name.middle_name,
#     surname:    Faker::Name.last_name,
#     surname1:    Faker::Name.last_name,
#     birth_day: rand(1..31),
#     birth_month: rand(1..12),
#     birth_year: rand(1950..2020),
#   )
#   client.save!
# end
# puts 'Client is ok'

# puts 'Spirals ...'
# 10.times do
#   spiral = Spiral.new(
#     physics: rand(1..9),
#     emotional: rand(1..9),
#     mental: rand(1..9),
#     creative: rand(1..9),
#     path: rand(1..9)
#   )
# end

# puts 'life maps ...'
# 10.times do
#   life = LifeMap.new(
#     action1: rand(1..9),
#     action2: rand(1..9),
#     action3: rand(1..9),
#     action4: rand(1..9)
#   )
#   life.save!
# end

# puts 'Experience fields ...'
# 10.times do
#   exp = ExprienceField.new(
#     one: rand(1..9),
#     two: rand(1..9),
#     three: rand(1..9),
#     four: rand(1..9),
#     five: rand(1..9),
#     six: rand(1..9),
#     seven: rand(1..9),
#     eight: rand(1..9),
#     nine: rand(1..9)
#   )
#   exp.save!
# end

# puts 'Expression fields  ...'
# 10.times do
#   expression = ExpressionField.new(
#     cerebral: rand(1..9),
#     physics: rand(1..9),
#     emotive: rand(1..9),
#     intuitive: rand(1..9)
#   )
#   expression.save!
# end

puts 'Finished!'
