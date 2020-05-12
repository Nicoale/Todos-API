class PingsController < ApplicationController
    def index
    render json: {"message":"Pong"}
    end
end
