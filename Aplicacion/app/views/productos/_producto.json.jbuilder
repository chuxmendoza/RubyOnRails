json.extract! producto, :id, :nombre, :precio, :descripcion, :created_at, :updated_at, :marca_id
json.url producto_url(producto, format: :json)
