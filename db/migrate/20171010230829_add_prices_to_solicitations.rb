class AddPricesToSolicitations < ActiveRecord::Migration[5.1]
  def change
    add_column :solicitations, :cents_per_word, :integer
    add_column :solicitations, :cents_flat_paid, :integer
  end
end
