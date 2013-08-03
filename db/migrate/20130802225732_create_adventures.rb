class CreateAdventures < ActiveRecord::Migration
  def up
  create_table :adventures do |t|
      t.integer :users_id
      t.string :story
      t.string :questions

    t.timestamps
    end
  end

  def down
    drop_table :adventures
  end
end