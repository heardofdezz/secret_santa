class Event < ApplicationRecord
    serialize :participants

    validates :date, :host, :location, :amount, :participants, presence: true 
end
