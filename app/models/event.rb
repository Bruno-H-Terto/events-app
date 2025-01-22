class Event < ApplicationRecord
  enum :status, {
    draft: 0,
    published: 5
  }

  has_many :schedules
  has_many :schedule_items, through: :schedules
end
