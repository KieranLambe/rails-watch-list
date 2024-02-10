class MoviesController < ApplicationController
    def new
        @movie = Movie.new
    end
    def create
        @movie = Movie.new(strong_params)
        @movie.save
    end

    private

    def strong_params
        params.require(:movie).permit(:title, :overview, :poster_url, :rating)
    end
end
