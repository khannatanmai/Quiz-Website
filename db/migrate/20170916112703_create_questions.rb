class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.integer :order
      t.string :q_string
      t.references :quiz
      t.timestamps
    end
  end
end
