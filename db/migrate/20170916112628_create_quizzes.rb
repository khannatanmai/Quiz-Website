class CreateQuizzes < ActiveRecord::Migration[5.1]
  def change
    create_table :quizzes do |t|
      t.string :name
      t.integer :quiz_id
      t.integer :current_question
      t.integer :score
      t.references :sub_genre
      t.timestamps
    end
  end
end
