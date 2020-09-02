module Api
    module V1
        class EventsController < ApplicationController
            # before_action :set_event, only [:show, :update, :destroy]
            def create
                @event = Event.new(event_params)
        
                if @event.save

                    # participants = 
                    # emails =
                    # mail = Mail.new do  
                #    render json: @event, status: :created, location: @event
                else
                    render json :@event.errors, status: :unprocessable_entity
                end
            end

            def index
                
                @events = Event.all
        
                render json: @events
            end
        
            def show
                
            end
        
            def update
                
            end
        
            def destroy
                
            end
            private

            def event_params
                params.permit(:host, :date, :location, :amount, :message, :participants)
            end
            
        
        end
    end
end
