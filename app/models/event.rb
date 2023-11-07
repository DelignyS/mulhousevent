class Event < ApplicationRecord
  validates :name, :description, :date, :place, presence: true
end
