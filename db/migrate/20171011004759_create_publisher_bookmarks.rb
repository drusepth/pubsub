class CreatePublisherBookmarks < ActiveRecord::Migration[5.1]
  def change
    create_table :publisher_bookmarks do |t|
      t.references :user, foreign_key: true
      t.references :publisher, foreign_key: true

      t.timestamps
    end
  end
end
