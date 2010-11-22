class CreateCategorizations < ActiveRecord::Migration
  def self.up
    create_table :categorizations do |t|
      t.integer :brick_id
      t.string :category_id

      t.timestamps
    end
  end

  def self.down
    drop_table :categorizations
  end
end
