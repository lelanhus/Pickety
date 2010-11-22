class NotesController < ApplicationController
  
  def index
    @notable = find_notable
    @notes = @notable.notes
  end
  
  def show
    @notable = find_notable
    @note = @notable.notes.find(params[:id])
  end
  
  def new
    @notable = find_notable
    @note = @notable.notes.build
  end
  
  def create
    @notable = find_notable
    @note = @notable.notes.build(params[:note])
    if @note.save
      flash[:notice] = "Successfully saved note."
      redirect_to @notable
    else
      render :action => 'new'
    end
  end
  
  private
  
  def find_notable
    params.each do |name, value|
      if name =~ /(.+)_id$/
        return $1.classify.constantize.find(value)
      end
    end
    nil
  end
end
