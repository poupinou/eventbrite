class AddUserToEvent < ActiveRecord::Migration[5.1]
  def change
    add_reference :events, :user, foreign_key: true
    add_reference :events, :creator, foreign_key: true
    add_reference :events, :attendee, foreign_key: true
  end
end
