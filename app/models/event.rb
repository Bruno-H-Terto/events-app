class Event < ApplicationRecord
  enum :status, {
    draft: 0,
    published: 5
  }
end
