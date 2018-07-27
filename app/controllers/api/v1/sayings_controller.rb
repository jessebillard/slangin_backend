class Api::V1::SayingsController < ApplicationController

    def index

    end

    def show
        # find the specific saying and render the recording attachment blob
        # for now just return the selected saying until you figure out how to send the blob back
        # byebug

        @saying = Saying.find(params[:id])

        send_data @saying.recording.download, content_type: @saying.recording.content_type

    end

    def create
        byebug
        # @saying = Saying.new(sayings_params)
        # byebug
        # @region = Region.find_by(name: params[:region])
        # @saying.region = @region

        # just for now, make all sayings belong to the first and only user
        # when authorization is added and user page is setup on frontend, then change this aspect...
        # to find current user and make them the owner of this saying.
        # @user = User.all.first
        # @saying.user = @user

        # take into account the votes...a new slang must have zero votes and must have votes value to save to db.
        # @saying.votes = 0

        # how to format the tags into an array of strings without hashtags
        # string[0..-1].split(",#")

        # @saying.recording.attach(params[:recording])
        # byebug
        # if @saying.save
        #     render json: @saying
        # else
        #     render json: error_message
        # end
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
        params.permit(:title, :description)
    end

    def error_message
        {status: "error", code: 400, message: "This request cannot be completed"}
    end

end
