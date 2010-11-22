class Category < ActiveRecord::Base
  has_many :categorizations, :dependent => :destroy
  has_many :categories, :through => :categorizations
  
  validates :name, :presence => true
end
