class CreateScores < ActiveRecord::Migration[5.1]
  def change
    create_table :scores do |t|
      t.integer :score
      t.belongs_to :quiz, index: true 
	  t.belongs_to :user, index: true
      t.timestamps
    end
  end
end
