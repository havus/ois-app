class CreateProjects < ActiveRecord::Migration[7.1]
  def up
    create_table :projects do |t|
      t.integer :city_id
      t.string :name
      t.timestamps
    end
  end

  def down
    drop_table :projects
  end
end
