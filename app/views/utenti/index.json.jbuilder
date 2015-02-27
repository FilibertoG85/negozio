json.array!(@utenti) do |utente|
  json.extract! utente, :id, :nome, :cognome, :nickname, :password
  json.url utente_url(utente, format: :json)
end
