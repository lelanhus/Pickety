class Gender < ActiveRecord::Base
  has_many :genderizations, :dependent => :destroy
  has_many :species, :through => :genderizations
  
  validates :name, :presence => true, :uniqueness => true
end
