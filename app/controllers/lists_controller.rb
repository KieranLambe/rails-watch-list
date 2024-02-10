class ListsController < ApplicationController
    def new
        @list = List.new
    end
    def create
        @list = List.new(strong_params)
        @list.save
    end
    def index
        @lists = List.all
    end

    private

    def strong_params
        params.require(:list).permit(:name)
    end
end
