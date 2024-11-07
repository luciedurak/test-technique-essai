class AddNumRoomsToListings < ActiveRecord::Migration[7.2]
  def change
    add_column :listings, :num_rooms, :integer
  end
end
