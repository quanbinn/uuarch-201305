class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.string :name
      t.text :description
      t.string :image_url
      t.string :file_url
      t.references :task

      t.timestamps
    end
    add_index :steps, :task_id
  end
end
