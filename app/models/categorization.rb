class Categorization < ActiveRecord::Base
  belongs_to :brick
  belongs_to :category
  
  validates :brick_id, :presence => true, :uniqueness => { :scope => :category_id }
  validates :category_id, :presence => true
end
