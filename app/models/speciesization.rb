class Speciesization < ActiveRecord::Base
  belongs_to :state
  belongs_to :species
  
  validates :state_id, :presence => true, :uniqueness => { :scope => :species_id }
end
