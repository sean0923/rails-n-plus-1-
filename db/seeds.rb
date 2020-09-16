# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 10.times do
#   author = Author.create(name: Faker::Name.name)
#   5.times do
#     author.books.create(title: Faker::Lorem.sentence(word_count: 2))
#   end
# end


5.times do
  building = Building.create(b_name: Faker::Creature::Animal.name)
  5.times do
    unit = Unit.new(u_name: Faker::Food.fruits)
    building.units.push(unit)
    5.times do
      task = Task.new(t_name: Faker::House.furniture)
      unit.tasks.push(task)
    end
  end
end
