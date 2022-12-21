class MangaSerializer < ActiveModel::Serializer
  attributes :id, :title, :artist, :description, :ongoing, :genre, :chapters, :image
  has_many :reviews
  has_many :users, through: :reviews
end
