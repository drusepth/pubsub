class AddWordCountsToSolicitations < ActiveRecord::Migration[5.1]
  def change
    add_column :solicitations, :minimum_wordcount, :integer
    add_column :solicitations, :maximum_wordcount, :integer
  end
end
