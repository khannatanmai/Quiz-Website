class CreateSubGenres < ActiveRecord::Migration[5.1]
  def change
    create_table :sub_genres do |t|
      t.integer :sub_genre_id
      t.string :name
      t.string :image
      t.references :genre
      t.timestamps
    end
  end
end
