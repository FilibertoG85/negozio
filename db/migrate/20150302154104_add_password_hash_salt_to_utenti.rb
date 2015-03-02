class AddPasswordHashSaltToUtenti < ActiveRecord::Migration
  def change
    add_column :utenti, :password_hash, :string
    add_column :utenti, :password_salt, :string
  end
end
