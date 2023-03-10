class CreateMangas < ActiveRecord::Migration[7.0]
  def change
    create_table :mangas do |t|
      t.string :title
      t.string :artist
      t.string :description
      t.boolean :ongoing
      t.string :genre
      t.integer :chapters

      t.timestamps
    end
  end
end
