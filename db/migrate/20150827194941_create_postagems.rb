class CreatePostagems < ActiveRecord::Migration
  def change
    create_table :postagems do |t|
      t.text :texto
      t.string :carater
      t.string :nome
      t.string :email

      t.timestamps null: false
    end
  end
end
