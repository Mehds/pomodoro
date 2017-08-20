class CreateCycles < ActiveRecord::Migration[5.1]
  def change
    create_table :cycles do |t|
      t.references :task, foreign_key: true, null: false
      t.integer :status, default: 0
      t.integer :duration
      t.boolean :break, default: false

      t.timestamps
    end
  end
end
