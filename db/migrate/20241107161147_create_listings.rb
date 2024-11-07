class CreateListings < ActiveRecord::Migration[7.2]
  def change
    create_table :listings do |t|
      t.string :title
      t.text :description
      t.string :address
      t.boolean :active
      t.string :owner

      t.timestamps
    end
  end
end
