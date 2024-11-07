class CreateBookings < ActiveRecord::Migration[7.2]
  def change
    create_table :bookings do |t|
      t.date :start_date
      t.date :end_date
      t.references :listing, null: false, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
