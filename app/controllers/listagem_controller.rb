class ListagemController < ApplicationController
  def index
  	@postListagem = Postagem.order(:created_at)
  	@postagem = Postagem.new
  	@comentarioNovo = Comentario.new
  end
end
