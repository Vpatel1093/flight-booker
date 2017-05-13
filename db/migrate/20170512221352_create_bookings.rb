class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.integer :flight_id

      t.timestamps
    end
    add_index :bookings, :flight_id
  end
end
