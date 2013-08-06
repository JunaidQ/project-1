class CreateTimelines < ActiveRecord::Migration
  def up
	  create_table :timelines do |t|
	      t.integer :adventures_id
		  t.timestamps
    end
  end

  def down
    drop_table :timelines
  end
end
