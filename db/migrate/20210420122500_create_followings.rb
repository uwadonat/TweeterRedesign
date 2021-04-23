class CreateFollowings < ActiveRecord::Migration[6.1]
  def change
    create_table :followings do |t|
      t.references :followed, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
    add_foreign_key :followings, :users, column: :followed_id 
  end
end
