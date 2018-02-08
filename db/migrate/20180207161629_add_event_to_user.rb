class AddEventToUser < ActiveRecord::Migration[5.1]
  def change
    add_reference :users, :event, foreign_key: true
    add_reference :users, :created_event, foreign_key: true
    add_reference :users, :attended_event, foreign_key: true
  end
end
