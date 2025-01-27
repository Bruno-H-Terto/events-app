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

    schedule_1.schedule_items.create(start_time: '11:00', length: 45, title: "Ruby on Rails com TDD #{1 + n}", description: """Nesta palestra, vamos explorar os fundamentos do TDD com Ruby on Rails, abordando desde os conceitos básicos até a aplicação prática no desenvolvimento de aplicações web. Você aprenderá a:
Compreender os princípios do TDD e sua importância no desenvolvimento ágil;
Escrever testes eficientes com RSpec, uma das ferramentas mais populares no ecossistema Rails;
Implementar funcionalidades de forma iterativa, seguindo o ciclo 'Red, Green, Refactor';
Melhorar a qualidade do código e reduzir bugs através de uma abordagem baseada em testes;
Integrar boas práticas de TDD ao seu fluxo de trabalho no Rails.
Seja você iniciante ou alguém que deseja reforçar seus conhecimentos, esta palestra fornecerá uma base sólida para começar a escrever código mais confiável e sustentável com Ruby on Rails.""", speaker_email: "speaker#{n}@email.com")
    schedule_1.schedule_items.create(start_time: '14:00', length: 90, title: "Ruby on Rails com TDD #{2 + n}", description: """Nesta palestra, vamos explorar os fundamentos do TDD com Ruby on Rails, abordando desde os conceitos básicos até a aplicação prática no desenvolvimento de aplicações web. Você aprenderá a:
Compreender os princípios do TDD e sua importância no desenvolvimento ágil;
Escrever testes eficientes com RSpec, uma das ferramentas mais populares no ecossistema Rails;
Implementar funcionalidades de forma iterativa, seguindo o ciclo 'Red, Green, Refactor';
Melhorar a qualidade do código e reduzir bugs através de uma abordagem baseada em testes;
Integrar boas práticas de TDD ao seu fluxo de trabalho no Rails.
Seja você iniciante ou alguém que deseja reforçar seus conhecimentos, esta palestra fornecerá uma base sólida para começar a escrever código mais confiável e sustentável com Ruby on Rails.""", speaker_email: "speaker#{n}@email.com")

    schedule_2.schedule_items.create(start_time: '11:00', length: 120, title: "Ruby on Rails com TDD #{3 + n}", description: """Nesta palestra, vamos explorar os fundamentos do TDD com Ruby on Rails, abordando desde os conceitos básicos até a aplicação prática no desenvolvimento de aplicações web. Você aprenderá a:
Compreender os princípios do TDD e sua importância no desenvolvimento ágil;
Escrever testes eficientes com RSpec, uma das ferramentas mais populares no ecossistema Rails;
Implementar funcionalidades de forma iterativa, seguindo o ciclo 'Red, Green, Refactor';
Melhorar a qualidade do código e reduzir bugs através de uma abordagem baseada em testes;
Integrar boas práticas de TDD ao seu fluxo de trabalho no Rails.
Seja você iniciante ou alguém que deseja reforçar seus conhecimentos, esta palestra fornecerá uma base sólida para começar a escrever código mais confiável e sustentável com Ruby on Rails.""", speaker_email: "speaker#{n}@email.com")
    schedule_2.schedule_items.create(start_time: '14:00', length: 140, title: "Ruby on Rails com TDD #{4 + n}", description: """Nesta palestra, vamos explorar os fundamentos do TDD com Ruby on Rails, abordando desde os conceitos básicos até a aplicação prática no desenvolvimento de aplicações web. Você aprenderá a:
Compreender os princípios do TDD e sua importância no desenvolvimento ágil;
Escrever testes eficientes com RSpec, uma das ferramentas mais populares no ecossistema Rails;
Implementar funcionalidades de forma iterativa, seguindo o ciclo 'Red, Green, Refactor';
Melhorar a qualidade do código e reduzir bugs através de uma abordagem baseada em testes;
Integrar boas práticas de TDD ao seu fluxo de trabalho no Rails.
Seja você iniciante ou alguém que deseja reforçar seus conhecimentos, esta palestra fornecerá uma base sólida para começar a escrever código mais confiável e sustentável com Ruby on Rails.""", speaker_email: "speaker#{n}@email.com")

    schedule_3.schedule_items.create(start_time: '11:00', length: 160, title: "Ruby on Rails com TDD #{5 + n}", description: """Nesta palestra, vamos explorar os fundamentos do TDD com Ruby on Rails, abordando desde os conceitos básicos até a aplicação prática no desenvolvimento de aplicações web. Você aprenderá a:
Compreender os princípios do TDD e sua importância no desenvolvimento ágil;
Escrever testes eficientes com RSpec, uma das ferramentas mais populares no ecossistema Rails;
Implementar funcionalidades de forma iterativa, seguindo o ciclo 'Red, Green, Refactor';
Melhorar a qualidade do código e reduzir bugs através de uma abordagem baseada em testes;
Integrar boas práticas de TDD ao seu fluxo de trabalho no Rails.
Seja você iniciante ou alguém que deseja reforçar seus conhecimentos, esta palestra fornecerá uma base sólida para começar a escrever código mais confiável e sustentável com Ruby on Rails.""", speaker_email: "speaker#{n}@email.com")
    schedule_3.schedule_items.create(start_time: '14:00', length: 180, title: "Ruby on Rails com TDD #{6 + n}", description: """Nesta palestra, vamos explorar os fundamentos do TDD com Ruby on Rails, abordando desde os conceitos básicos até a aplicação prática no desenvolvimento de aplicações web. Você aprenderá a:
Compreender os princípios do TDD e sua importância no desenvolvimento ágil;
Escrever testes eficientes com RSpec, uma das ferramentas mais populares no ecossistema Rails;
Implementar funcionalidades de forma iterativa, seguindo o ciclo 'Red, Green, Refactor';
Melhorar a qualidade do código e reduzir bugs através de uma abordagem baseada em testes;
Integrar boas práticas de TDD ao seu fluxo de trabalho no Rails.
Seja você iniciante ou alguém que deseja reforçar seus conhecimentos, esta palestra fornecerá uma base sólida para começar a escrever código mais confiável e sustentável com Ruby on Rails.""", speaker_email: "speaker#{n}@email.com")
end
