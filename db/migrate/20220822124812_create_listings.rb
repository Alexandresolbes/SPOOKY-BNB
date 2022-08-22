class CreateListings < ActiveRecord::Migration[7.0]
  def change
    create_table :listings do |t|
      t.string :title
      t.text :description
      t.string :address
      t.integer :max_guests
      t.float :price_per_night
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
