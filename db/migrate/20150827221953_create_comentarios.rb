class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.text :mensagem
      t.string :nome
      t.string :email

      t.timestamps null: false
    end
  end
end
