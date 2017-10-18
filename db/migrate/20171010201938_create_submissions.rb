class CreateSubmissions < ActiveRecord::Migration[5.1]
  def change
    create_table :submissions do |t|
      t.references :story, foreign_key: true
      t.references :solicitation, foreign_key: true
      t.datetime :submitted_at

      t.timestamps
    end
  end
end
