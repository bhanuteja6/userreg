class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :task_type
      t.string :disposition
      t.string :acceptor
      t.float :estimater_hours
      t.integer :proid
      t.text :description
      t.references :usdemo

      t.timestamps
    end
    add_index :tasks, :usdemo_id
  end
end
