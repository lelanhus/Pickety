class AddRelationIdToBricks < ActiveRecord::Migration
  def self.up
    add_column :bricks, :relation_id, :integer
  end

  def self.down
    remove_column :bricks, :relation_id
  end
end
