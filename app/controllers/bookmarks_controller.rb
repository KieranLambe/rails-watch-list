class BookmarksController < ApplicationController
    def new
        @bookmark = Bookmark.new
    end
    def create
        @bookmark = Bookmark.new(strong_params)
        @bookmark.save
    end

    private

    def strong_params
        params.require(:bookmark).permit(:comment)
    end
end
