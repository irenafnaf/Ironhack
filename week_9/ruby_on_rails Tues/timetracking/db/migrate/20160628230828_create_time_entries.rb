class CreateTimeEntries < ActiveRecord::Migration
  def change
    create_table :time_entries do |t|
    	t.references :project, index: true 
    	t.integer :hours
    	t.integer :minute
    	t.text :comments
    	t.datetime :date

      t.timestamps null: false
    end
  end
end
