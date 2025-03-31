class CreateProjectDetails < ActiveRecord::Migration[7.1]
  def change
    create_table :project_details do |t|
      t.references :project, null: false, foreign_key: true
      t.string :image
      t.text :description

      t.timestamps
    end
  end
end
