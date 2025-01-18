# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


10.times do |n|
  Event.create(
    name: "Event#{n + 1}",
    url: "localhost:3001/events/#{n + 1}",
    description: "Event#{n} description",
    start_date: '15-01-2025',
    end_date: '17-01-2025',
    event_type: 'in-person',
    location: 'Florianópolis',
    participant_limit: 20 + n,
    status: 'draft')
end