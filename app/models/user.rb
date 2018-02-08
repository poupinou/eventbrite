class User < ApplicationRecord
	validates :name, uniqueness: true, presence: true

	has_many :creators, class_name: 'User',
											foreign_key:'created_event_id'
	has_many :created_events, class_name: 'event'
	has_many :attendees, class_name: 'User',
												foreign_key:'attended_event_id'
	has_and_belongs_to_many :attended_events, class_name: 'event',
																						foreign_key:'attended_event_id'
end
