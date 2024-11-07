class RemoveGuestAndAssociations < ActiveRecord::Migration[7.2]
  def change
    remove_reference :reservations, :guest, foreign_key: true
    drop_table :guests
  end
end
