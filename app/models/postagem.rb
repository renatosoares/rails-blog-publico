class Postagem < ActiveRecord::Base
    has_many :comentario
   # accepts_nested_attributes_for :comentario
end
