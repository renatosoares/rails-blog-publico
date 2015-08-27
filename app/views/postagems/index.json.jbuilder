json.array!(@postagems) do |postagem|
  json.extract! postagem, :id, :texto, :carater, :nome, :email
  json.url postagem_url(postagem, format: :json)
end
