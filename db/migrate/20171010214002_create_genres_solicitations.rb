class CreateGenresSolicitations < ActiveRecord::Migration[5.1]
  def change
    create_table :genres_solicitations do |t|
      t.references :genre, foreign_key: true
      t.references :solicitation, foreign_key: true

      t.timestamps
    end
  end
end
