# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


Affirmation.create(content: "You are capable, resilient, and ready to overcome any challenge that comes your way.")
Affirmation.create(content: "You are worthy of all the good things life has to offer.")
Affirmation.create(content: "Every day, you grow stronger and more confident.")
Affirmation.create(content: "Your potential is limitless, and today you are one step closer to your goals.")
Affirmation.create(content: "You bring positivity and light to everyone around you.")
Affirmation.create(content: "You are enough just as you are, and you are capable of achieving greatness.")