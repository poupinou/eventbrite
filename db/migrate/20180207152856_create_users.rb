class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
    	t.references :creator, index: true
    	t.references :attendee, index: true
      t.string :name

      t.timestamps
    end
  end
end
