class CreateSquares < ActiveRecord::Migration
  def self.up
    create_table :squares, :id => false do |t|
      t.string     :uuid,       :limit => 36, :primary => true
      t.string     :garden_id,  :limit => 36
      t.string     :plant_id,   :limit => 36
      t.integer    :position
      t.date       :planting_date
      t.timestamps
    end
    
    add_index :squares, :uuid, :unique => true
    add_index :squares, :garden_id
    add_index :squares, :position
    add_index :squares, :plant_id
    add_index :squares, :planting_date
  end

  def self.down
    drop_table :squares
  end
end
