class CategorizationsController < InheritedResources::Base
  belongs_to :brick
  
  def create
    @brick = Brick.find(params[:brick_id])
    @brick.categorizations.create(:category_id => params[:category_id])
    redirect_to brick_categorizations_url(@brick)
  end
end
