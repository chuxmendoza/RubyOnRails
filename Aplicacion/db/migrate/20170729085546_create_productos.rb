class CreateProductos < ActiveRecord::Migration[5.0]
  def change
    create_table :productos do |t|
      t.string :nombre
      t.float :precio
      t.text :descripcion

      t.timestamps
    end
  end
end
