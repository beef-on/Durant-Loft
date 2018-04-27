class EventsController < ApplicationController
	before_action :authenticate_user!

	def index
		Event.all
	end

	def events
		@event = Event.new(event_params)
	end

	def rides
		@event = Event.find(params[:id])
		puts params[:user_id].to_i
		if !@event.users.exists?(params[:user_id].to_i)
			@event.users<<(User.find(params[:user_id].to_i))
		else 
			puts "Can't. Already signed up for event!"
		end
		render 'home/events'
	end 

	def riders
		# if params[:driver]
		# 	@event.drivers.push(params[:firstName] + " " + params[:lastName])
		# else
		# 	@event.riders.push(params[:firstName] + " " + params[:lastName])
		# end
	end

	def create
		@event = Event.create(title:params[:event][:title],description:params[:event][:description], need_rides:params[:event][:need_rides],time:params[:event][:time])
	    @event.user_id = current_user.id
	    @event.save!
		respond_to do |format|
			if @event.need_rides
				format.html { redirect_to root_path, notice: 'Please fill out if you will be a driver or someone who needs rides.' }
				format.json { render :show, status: :created, location: @event }
			else
				format.html { redirect_to root_path, notice: 'Event was successfully created.' }
				format.json { render :show, status: :created, location: @event }
			end
		end
    end

    private
    
    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.permit(:title, :description, :need_rides, :time)
    end

end