json.array!(@denuncia_transitos) do |denuncia_transito|
  json.extract! denuncia_transito, :id, :nombre, :ubicacion, :dependencia, :estado, :municipio, :fecha, :descripcion
  json.url denuncia_transito_url(denuncia_transito, format: :json)
end
