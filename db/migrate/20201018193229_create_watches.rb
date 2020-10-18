class CreateWatches < ActiveRecord::Migration[6.0]
  def change
    create_table :watches do |t|
      t.string :name
      t.string :brand
      t.string :color
      t.string :image_url
      t.integer :price

      t.timestamps
    end
  end
end
