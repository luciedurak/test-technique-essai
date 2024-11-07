class RemoveOwnerFromListings < ActiveRecord::Migration[7.2]
  def change
    remove_reference :listings, :owner, index: true
  end
end
