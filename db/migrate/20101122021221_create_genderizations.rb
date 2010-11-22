class CreateGenderizations < ActiveRecord::Migration
  def self.up
    create_table :genderizations do |t|
      t.integer :species_id
      t.integer :gender_id

      t.timestamps
    end
  end

  def self.down
    drop_table :genderizations
  end
end
