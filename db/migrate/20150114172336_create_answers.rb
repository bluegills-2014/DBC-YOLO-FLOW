class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text :body
      t.references :user, index: true
      t.references :question, index: true

      t.timestamps
    end
  end
end
