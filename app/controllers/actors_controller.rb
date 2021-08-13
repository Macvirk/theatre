class ActorsController < ApplicationController
    def index
       @actor = Actor.all
       render json: @actor

       #@movie = Movie.find(params[:movie_id])
        #@actors =  @movie.actors
        #render json: @actors
    end


    def create
        @actor= Actor.create(actors_params)
        render json: @actor

          
        #@movies = Movie.find(params[:movie_id])
        #@actors= @movies.genres.create(actors_params)
        #render json: @actors
    end


    def show
        @actor= Actor.find(params[:id])
        render json: @actor

        #@movies = Movie.find(params[:movie_id])
        #@actors= @movies.actors.find(params[:id])
        #render json: @actors
    end

    def update
        @actor= Actor.find(params[:id])
        @actor= @actor.update(actors_params)
        render json: @actor
    end

    def destroy
        @actor= Actor.find(params[:id])
        @actor.destroy
        #@movie = @movie.destroy
    end   



    private

    def actors_params
        params.require(:actor).permit(:first_name, :last_name, :age, :email)
     
    end

 
end 