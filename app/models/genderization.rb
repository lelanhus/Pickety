class Genderization < ActiveRecord::Base
  belongs_to :species
  belongs_to :gender
  
  validates :species_id, :presence => true, :uniqueness => { :scope => :gender_id }
end
