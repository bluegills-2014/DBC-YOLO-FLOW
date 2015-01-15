class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.references :voteable, polymorphic: true, index: true
      t.references :user, index: true
      t.integer :vote_direction

      t.timestamps
    end
  end
end
