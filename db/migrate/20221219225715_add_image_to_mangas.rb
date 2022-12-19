class AddImageToMangas < ActiveRecord::Migration[7.0]
  def change
    add_column :mangas, :image, :string
  end
end
