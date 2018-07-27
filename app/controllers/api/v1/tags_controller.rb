class Api::V1::TagsController < ApplicationController
    def index
        # this will use the saying from the params to find all tags belonging to that saying
        
    end

    def show
        # will use specific tag from params to find all sayings using this tag
        # maybe use serializer to get all sayings when searching for tag...
    end

end
