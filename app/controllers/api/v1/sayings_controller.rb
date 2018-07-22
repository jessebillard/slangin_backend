class Api::V1::SayingsController < ApplicationController

    def index

    end

    def show

    end

    def create
        # byebug
        @saying = Saying.new(sayings_params)
        # byebug
        @region = Region.find_by(name: params[:saying][:region])
        @saying.region = @region

        # just for now, make all sayings belong to the first and only user
        # when authorization is added and user page is setup on frontend, then change this aspect...
        # to find current user and make them the owner of this saying.
        @user = User.all.first
        @saying.user = @user

        # take into account the votes...a new slang must have zero votes and must have votes value to save to db.
        @saying.votes = 0

        if @saying.save
            render json: @saying
        else
            render json: error_message
        end
    end

    def update
        # byebug
        @saying = Saying.find(params[:saying][:id])
        @saying.votes += 1
        if @saying.save
            render json: @saying
        else
            render json: error_message
        end
    end

    def destroy

    end

    private

    def sayings_params
        params.require(:saying).permit(:title, :description)
    end

    def error_message
        {status: "error", code: 400, message: "This request cannot be completed"}
    end

end
