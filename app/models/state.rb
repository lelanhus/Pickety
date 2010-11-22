class State < ActiveRecord::Base
  has_many :statizations, :dependent => :destroy
  has_many :bricks, :through => :statizations
  
  has_many :speciesizations, :dependent => :destroy
  has_many :species, :through => :speciesizations
  
  validates :name, :presence => true, :uniqueness => true
end
