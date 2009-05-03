class CreateGardens < ActiveRecord::Migration
  def self.up
    create_table :gardens, :id => false do |t|
      t.string    :uuid,    :limit => 36, :primary => true
      t.string    :name,    :limit => 128
      t.string    :user_id, :limit => 36
      t.integer   :position
      t.date      :planting_date
      t.timestamps
    end
    
    add_index :gardens, :uuid, :unique => true
    add_index :gardens, :name
    add_index :gardens, :user_id
    add_index :gardens, :position
    add_index :gardens, :planting_date
  end

  def self.down
    drop_table :gardens
  end
end
