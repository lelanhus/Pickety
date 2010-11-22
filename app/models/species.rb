class Species < ActiveRecord::Base
  has_many :speciesizations, :dependent => :destroy
  has_many :states, :through => :speciesizations
  
  has_many :genderizations, :dependent => :destroy
  has_many :genders, :through => :genderizations
  
  validates :name, :presence => true, :uniqueness => true
end
