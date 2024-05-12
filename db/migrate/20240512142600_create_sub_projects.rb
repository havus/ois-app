class CreateSubProjects < ActiveRecord::Migration[7.1]
  def up
    create_table :sub_projects do |t|
      t.bigint :project_id
      t.string :name

      t.timestamps
    end
  end

  def down
    drop_table :sub_projects
  end
end
