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
  name = Faker::Name.name
  event = Event.create(
    name: name,
    url: "localhost:3001/events/#{n + 1}",
    description: "#{name} teste",
    start_date: 7.days.from_now,
    end_date: 14.days.from_now,
    event_type: 'in-person',
    location: Faker::Locations::Australia.location,
    participant_limit: 20 + n,
    status: 'draft')

    schedule_1 = event.schedules.create(date: "#{14 + n}-01-2025", start_time: '11:00')
    schedule_2 = event.schedules.create(date: "#{15 + n}-01-2025", start_time: '11:00')
    schedule_3 = event.schedules.create(date: "#{16 + n}-01-2025", start_time: '11:00')

    schedule_1.schedule_items.create(start_time: '11:00', lenght: 90, title: "Title #{1 + n}", description: 'Something', speaker_email: "speaker#{n}@email.com")
    schedule_1.schedule_items.create(start_time: '14:00', lenght: 90, title: "Title #{2 + n}", description: 'Something', speaker_email: "speaker#{n}@email.com")

    schedule_2.schedule_items.create(start_time: '11:00', lenght: 90, title: "Title #{1 + n}", description: 'Something', speaker_email: "speaker#{n}@email.com")
    schedule_2.schedule_items.create(start_time: '14:00', lenght: 90, title: "Title #{2 + n}", description: 'Something', speaker_email: "speaker#{n}@email.com")

    schedule_3.schedule_items.create(start_time: '11:00', lenght: 90, title: "Title #{1 + n}", description: 'Something', speaker_email: "speaker#{n}@email.com")
    schedule_3.schedule_items.create(start_time: '14:00', lenght: 90, title: "Title #{2 + n}", description: 'Something', speaker_email: "speaker#{n}@email.com")
end

