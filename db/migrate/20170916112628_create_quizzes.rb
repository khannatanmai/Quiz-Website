class CreateQuizzes < ActiveRecord::Migration[5.1]
  def change
    create_table :quizzes do |t|
      t.string :name
      t.references :sub_genre
      t.timestamps
    end
  end
end
