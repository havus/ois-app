class CreateMaterial < ActiveRecord::Migration[7.1]
  def change
    create_table :materials do |t|
      t.string :name
      t.decimal :price, precision: 38, scale: 6
      t.string :code

      t.timestamps
    end
  end
end
