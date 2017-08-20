class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :title, null: false
      t.string :description, null: true
      t.integer :estimation, null: false
      t.boolean :done, default: false

      t.timestamps
    end
  end
end
