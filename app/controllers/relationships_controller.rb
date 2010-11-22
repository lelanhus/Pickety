class RelationshipsController < ApplicationController
  before_filter :load_brick
  
  def index
    @brick = Brick.find(params[:brick_id])
    @relationships = Brick.all
    @relationships.delete(@brick)
    @relationships
    session[:brick] = @brick.id
  end
  
  def create
    @brick.relationships.create(:relation_id => params[:relation_id])
    redirect_to brick_relationships_url(session[:brick])
  end
  
  private
  
  def load_brick
    @brick = Brick.find(params[:brick_id])
  end
end
