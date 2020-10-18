class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.belongs_to :cart, null: false, foreign_key: true
      t.belongs_to :watch, null: false, foreign_key: true

      t.timestamps
    end
  end
end
