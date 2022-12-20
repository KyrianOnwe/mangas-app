class User < ApplicationRecord
    has_many :reviews 
    has_many :managas, through: :reviews
end
