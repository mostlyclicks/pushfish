class CreateAnglers < ActiveRecord::Migration
  def change
    create_table :anglers do |t|
      t.string :name
      t.integer :boat_num

      t.timestamps
    end
  end
end
