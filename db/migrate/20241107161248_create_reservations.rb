class CreateReservations < ActiveRecord::Migration[7.2]
  def change
    create_table :reservations do |t|
      t.date :start_date
      t.date :end_date
      t.references :listing, null: false, foreign_key: true
      t.references :guest, null: false, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
