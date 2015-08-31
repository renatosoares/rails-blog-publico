class ListagemController < ApplicationController
  def index
  	@postListagem = Postagem.order('created_at DESC')
  	@postagem = Postagem.new
  	@comentarioNovo = Comentario.new
    @comentariosListagem = Comentario.all

  end

  def comentar
     @comentariosListagem = Comentario.all
      respond_to do |format|
        format.js
      end
  end 
end
