class CreateRolls < ActiveRecord::Migration
  def change
    create_table :rolls do |t|
      t.integer :value
 
      t.timestamps
    end
  end
end
