class CreateUtenti < ActiveRecord::Migration
  def change
    create_table :utenti do |t|
      t.string :nome
      t.string :cognome
      t.string :nickname
      t.string :password

      t.timestamps null: false
    end
  end
end
