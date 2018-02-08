class Event < ApplicationRecord
	validates :place, presence: true
	validates :date, presence: true
	validates :description, presence: true 

	has_many :created_events, class_name: 'event',
														foreign_key:'creator_id'
	belongs_to :creator, class_name: 'User'

	has_many :attended_events, class_name: 'event',
											foreign_key:'attendee_id'
	has_many :attendee, class_name: 'User',
											foreign_key: 'attendee_id'
end
