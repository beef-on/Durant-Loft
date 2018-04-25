class EventsController < ApplicationController
	before_action :authenticate_user!
	def index
		Event.all
	end

	def events
		@event = Event.new(event_params)
	end


	def create
		@event = Event.new(event_params)
		# @event = @user.events.create(event_params)

	respond_to do |format|
		if @event.save
		format.html { redirect_to @event, notice: 'Event was successfully created.' }
		format.json { render :show, status: :created, location: @event }
		else
		format.html { render :new }
		format.json { render json: @event.errors, status: :unprocessable_entity }
		end
	end
    end

    private
    
    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:title, :description, :need_rides)
    end

end