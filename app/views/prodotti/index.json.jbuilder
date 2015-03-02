json.array!(@prodotti) do |prodotto|
  json.extract! prodotto, :id, :nome, :descrizione, :image_url, :utente_id
  json.url prodotto_url(prodotto, format: :json)
end
