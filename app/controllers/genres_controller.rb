class GenresController < ApplicationController
    def index

        @movie = Movie.find(params[:movie_id])
        @genres =  @movie.genres
        render json: @genres

        #@genre = Genre.all
       #render json:  @genre
    end 


    def create

        
        @movies = Movie.find(params[:movie_id])
        @genres= @movies.genres.create(genres_params)
        render json: @genres

        #@genre= Genre.create(genres_params)
        #render json: @genre

    
    end


    def show
        @movies = Movie.find(params[:movie_id])
        @genres= @movies.genres.find(params[:id])
        render json: @genres
    end

    def update
        @genre= Genre.find(params[:id])
        @genre= @genre.update(genres_params)
        render json: @genre
    end

    def destroy
        @genre= Genre.find(params[:id])
        @genre.destroy
        #@genre = @genre.destroy
    end   



    private

    def genres_params
        params.require(:genre).permit( :name, :description)
        
    end

 
end 