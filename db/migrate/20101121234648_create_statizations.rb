class CreateStatizations < ActiveRecord::Migration
  def self.up
    create_table :statizations do |t|
      t.integer :brick_id
      t.integer :state_id

      t.timestamps
    end
  end

  def self.down
    drop_table :statizations
  end
end
