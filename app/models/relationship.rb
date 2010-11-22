class Relationship < ActiveRecord::Base
  belongs_to :relation, :class_name => 'Brick'
  belongs_to :brick
  
  validates :brick_id, :presence => true, :uniqueness => { :scope => :relation_id }
end
