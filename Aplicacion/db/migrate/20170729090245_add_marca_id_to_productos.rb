class AddMarcaIdToProductos < ActiveRecord::Migration[5.0]
  def change
    add_column :productos, :marca_id, :integer
  end
end
