class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks, id: :uuid do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.integer :priority, null: false, default: 0
      t.integer :status, null: false, default: 0
      t.references :user, foreign_key: true, type: :uuid
      t.timestamps
    end

    add_index :tasks, :priority
    add_index :tasks, :status
  end
end
