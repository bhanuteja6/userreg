class CreateUsdemos < ActiveRecord::Migration
  def change
    create_table :usdemos do |t|
      t.string :name
      t.string :disposition
      t.string :customer
      t.string :tracker
      t.string :status
      t.float :estimated_hours
      t.text :description
      t.integer :projectid
      t.references :iteration

      t.timestamps
    end
    #add_index :usdemos, :project_id
    add_index :usdemos, :iteration_id
  end
end
