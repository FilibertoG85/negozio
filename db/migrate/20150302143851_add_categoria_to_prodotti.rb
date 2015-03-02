class AddCategoriaToProdotti < ActiveRecord::Migration
  def change
    add_column :prodotti, :categoria, :string
  end
end
