class CreateTechnologies < ActiveRecord::Migration[6.1]
  def change
    create_table :technologies do |t|
      t.text :tech_desc
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
