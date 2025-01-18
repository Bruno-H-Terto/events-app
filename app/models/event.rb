class Event < ApplicationRecord
  enum :status, {
    draft: 0,
    published: 5
  }

  has_many :schedules
end
