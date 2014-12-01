json.array!(@posts) do |post|
  json.extract! post, :id, :conteudo, :data, :usuario
  json.url post_url(post, format: :json)
end
