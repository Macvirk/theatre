class MoviesController < ApplicationController
    def index
       @movies = Movie.all
       @movies = Movie.search(params[:search]) if params[:search].present?
       render json: @movies

    end 


    def create
        @movie= Movie.create(movies_params)
        render json: @movie
    end


    def show
        @movie= Movie.find(params[:id])
        render json: @movie
    end

    def update
        @movie= Movie.find(params[:id])
        @movie= @movie.update(movies_params)
        render json: @movie
    end

    def destroy
        @movie= Movie.find(params[:id])
        @movie.destroy
        #@movie = @movie.destroy
    end   



    private

    def movies_params
        params.require(:movie).permit(:movie_title, :movie_year, :rank, :description,
        :release_date, :country_of_origin, :language, :budget)
        #genres_attributes: [:name, :description]
    end

 
end 