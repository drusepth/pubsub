class CreateSolicitationBookmarks < ActiveRecord::Migration[5.1]
  def change
    create_table :solicitation_bookmarks do |t|
      t.references :user, foreign_key: true
      t.references :solicitation, foreign_key: true

      t.timestamps
    end
  end
end
