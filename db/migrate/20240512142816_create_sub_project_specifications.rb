class CreateSubProjectSpecifications < ActiveRecord::Migration[7.1]
  def up
    create_table :sub_project_specifications do |t|
      t.bigint :sub_project_id
      t.string :name
      t.integer :unit_id
      t.decimal :value, precision: 38, scale: 6

      t.timestamps
    end
  end

  def down
    drop_table :sub_project_specifications
  end
end
