class CreateTransactions < ActiveRecord::Migration[7.1]
  def up
    create_table :transactions do |t|
      t.bigint :material_id
      t.integer :unit_id
      t.date :date
      t.string :name
      t.decimal :quantity, precision: 38, scale: 6
      t.decimal :price, precision: 38, scale: 6
      t.integer :transaction_type_id

      t.timestamps
    end
  end

  def down
    drop_table :transactions
  end
end
