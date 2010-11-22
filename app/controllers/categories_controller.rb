class CategoriesController < InheritedResources::Base
  belongs_to :category, :optional => true
end
