class AddPriceToSpace < ActiveRecord::Migration[7.0]
  def change
    add_column :spaces, :price, :float
  end
end
