class CreateCarts < ActiveRecord::Migration[6.0]
  def change
    create_table :carts do |t|
      t.boolean :history, default: false
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
