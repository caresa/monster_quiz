class CreateQuizQuestions < ActiveRecord::Migration
  def change
    create_table :quiz_questions do |t|
      t.references :question, index: true
      t.references :quiz, index: true

      t.timestamps
    end
  end
end
