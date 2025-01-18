class Schedule < ApplicationRecord
  belongs_to :event
  has_many :schedule_items
end
