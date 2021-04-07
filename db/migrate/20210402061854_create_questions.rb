class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|

      t.string :question,     null: false
      t.integer :genre_id,    null: false
      t.references :user,     foreign_key: true

      t.timestamps
    end
  end
end
