class MangasController < ApplicationController
    def index
        manga = Manga.all 
        render json: manga
    end

end
