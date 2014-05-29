json.array!(@inicios) do |inicio|
  json.extract! inicio, :id
  json.url inicio_url(inicio, format: :json)
end
