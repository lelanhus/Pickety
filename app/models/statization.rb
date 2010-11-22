class Statization < ActiveRecord::Base
  belongs_to :brick
  belongs_to :state
  
  validates :brick_id, :presence => true, :uniqueness => { :scope => :state_id }
  
end
