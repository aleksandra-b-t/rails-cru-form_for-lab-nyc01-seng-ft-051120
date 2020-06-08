class ArtistsController < ApplicationController
    def index 
        @artist = Artist.all
    end

    def create
        @artist = Artist.new(artist_params)
        @artist.save
        redirect_to artist_path(@artist)
    end

    def update
        @artist = Artist.find(params[:id])
        @artist.update(artist_params)
        redirect_to artist_path(@artist.id)
    end

    def show
        @artist = Artist.find(params[:id])
        # render :show
    end

    def edit
        @artist = Artist.find(params[:id])
        # redirect_to artist_path(@artist)
    end
    
    def new
        @artist = Artist.new
    end
    private

		def artist_params
			params.require(:artist).permit(:name, :bio)
		end
end