class Manga < ApplicationRecord
    has_many :reviews
    has_many :mangas, through: :reviews
end
