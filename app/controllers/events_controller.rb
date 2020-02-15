class EventsController < ApplicationController
    before_action :find_event, only: (:show,:edit,:update,:destroy)
    def index
        @events = Event.all
    end
    def show
    end
    def new
        @event = Event.new
    end
    def create
        @event = Event.new(event_params)
        if(@event.save)
            redirect_to @event
        else
            render :new
        end
    end
    def edit
    end
    def update
    end
    def update
    end
    def destroy
    end
end

private

def event_params
    params.require(:event).permit(:name,:location,:notes)
end

def find_event
    @event = Event.find(params[:id])
end

end
