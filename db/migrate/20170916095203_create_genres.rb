class CreateGenres < ActiveRecord::Migration[5.1]
  def change
    create_table :genres do |t|
      t.string :image
      t.string :name
      t.timestamps
    end
  end
end
