class CreateStories < ActiveRecord::Migration[5.1]
  def change
    create_table :stories do |t|
      t.string :title
      t.string :description
      t.references :user, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
