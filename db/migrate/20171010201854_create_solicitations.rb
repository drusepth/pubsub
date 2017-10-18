class CreateSolicitations < ActiveRecord::Migration[5.1]
  def change
    create_table :solicitations do |t|
      t.references :publisher, foreign_key: true
      t.datetime :starts_at
      t.datetime :ends_at

      t.timestamps
    end
  end
end
