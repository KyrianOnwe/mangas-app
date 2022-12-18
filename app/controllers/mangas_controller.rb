class MangasController < ApplicationController
    def index
        manga = Manga.all 
        render json: manga
    end

    def show
        manga = Manga.find(params[:id])
        render json: manga
      rescue ActiveRecord::RecordNotFound
        render json: "Manga not found", status: :not_found
    end

end
