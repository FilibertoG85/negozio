class CreateProdotti < ActiveRecord::Migration
  def change
    create_table :prodotti do |t|
      t.string :nome
      t.text :descrizione
      t.string :image_url
      t.integer :utente_id

      t.timestamps null: false
    end
  end
end
