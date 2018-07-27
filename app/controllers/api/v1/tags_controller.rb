class Api::V1::TagsController < ApplicationController
    def index
        # this will use the saying from the params to find all tags belonging to that sayin

        # @tags = Tag.find(:all, :conditions => {:sayings => params[:saying]})
        @saying = Saying.find_by(title: params[:saying])
        # byebug
        if @saying
            render json: @saying.tags
        else
            render json: error_message
        end
    end

    def show
        # will use specific tag from params to find all sayings using this tag
        # maybe use serializer to get all sayings when searching for tag...
    end

    private

    def error_message
        {status: "error", code: 400, message: "This request cannot be completed"}
    end

end
