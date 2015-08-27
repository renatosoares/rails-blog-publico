json.array!(@comentarios) do |comentario|
  json.extract! comentario, :id, :mensagem, :nome, :email
  json.url comentario_url(comentario, format: :json)
end
