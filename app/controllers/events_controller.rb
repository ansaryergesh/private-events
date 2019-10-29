class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def create
    @event = current_user.events.build(event_params)
    if @event.save
      flash.now[:success] = 'Welcome to the Events App'
      redirect_to root_path
    else
      render 'new'
    end
    
  end

  def show
    @event = Event.find(params[:id])
  end

  private
  def event_params
    params.require(:event).permit(:location, :event, :description, :date)
  end

end
