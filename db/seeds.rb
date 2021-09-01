
require 'ffaker'

# 100.times do
# #   Movie.create(
#   title: FFaker::Movie.title , 
#   year: FFaker::Vehicle.year , 
#   plot: FFaker::HipsterIpsum.paragraph, 
#   director: FFaker::NameNB.name_with_prefix, 
    # english: FFaker::Boolean.random)

100.times do
  Actor.create(
    first_name: FFaker::Name.first_name,
    last_name: FFaker::Name.last_name,
    known_for: FFaker::Movie.title,
    age: rand(6..99),
    gender: FFaker::Gender.random
  )
end

