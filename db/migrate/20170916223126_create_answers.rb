class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.string :a_string
      t.boolean :correct
      t.references :question
      t.timestamps
    end
  end
end
