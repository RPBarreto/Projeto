json.array!(@comentarios) do |comentario|
  json.extract! comentario, :id, :id_post, :conteudo, :id_usuario, :data
  json.url comentario_url(comentario, format: :json)
end
