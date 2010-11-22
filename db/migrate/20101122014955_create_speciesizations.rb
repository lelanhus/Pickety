class CreateSpeciesizations < ActiveRecord::Migration
  def self.up
    create_table :speciesizations do |t|
      t.integer :state_id
      t.integer :species_id

      t.timestamps
    end
  end

  def self.down
    drop_table :speciesizations
  end
end
