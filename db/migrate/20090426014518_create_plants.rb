class CreatePlants < ActiveRecord::Migration
  def self.up
    create_table :plants, :id => false do |t|
      t.string  :uuid, :limit => 36, :primary => true
      t.string  :type, :limit => 10
      t.string  :name
      t.string  :family
      t.string  :height
      t.decimal :per_square, :precision => 3, :scale => 1
      t.boolean :is_spring, :default => false
      t.boolean :is_summer, :default => false
      t.boolean :is_fall,   :default => false
      t.boolean :is_winter, :default => false
      t.integer :seed_to_harvest
      t.integer :seed_storage
      t.integer :indoor_seed_starting
      t.string  :earliest_planting
      t.boolean :is_additional_plantings, :default => false
      # t.string  :plantable_id, :limit => 36, :null => false
      # t.string  :plantable_type, :limit => 64, :null => false
      t.timestamps
    end
    
    add_index :plants, :uuid, :unique => true
    add_index :plants, :name
    add_index :plants, :type
    # add_index :plants, [ :plantable_id, :plantable_type ]
  end

  def self.down
    drop_table :plants
  end
end
