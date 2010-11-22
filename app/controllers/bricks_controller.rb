class BricksController < InheritedResources::Base
  belongs_to :category, :optional => true  
end
