json.array!(@representantes) do |representante|
  json.extract! representante, :id, :num, :nombre, :partido, :eleccion, :estado, :camara, :propietario, :twitter, :youtube, :facebook, :paginapersonal, :twitteravatar
  json.url representante_url(representante, format: :json)
end
