class ScheduleItem < ApplicationRecord
  belongs_to :schedule
  has_one :event, through: :schedule
end
