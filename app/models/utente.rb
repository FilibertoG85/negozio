class Utente < ActiveRecord::Base

  attr_accessor :password_confirmation
  has_many :prodotti

  validates :nome,
              :presence => { :message => "il nome non può essere vuoto"},
              :length => { :message => " la lunghezza deve essere tra 3 e 20 caratteri",
                           :minimum => 3, :maximum => 20}

  validates :cognome,
              :presence => { :message => "il cognome non può essere vuoto"},
              :length => { :message => " la lunghezza deve essere tra 3 e 20 caratteri",
                           :minimum => 3, :maximum => 20}

  validates :nickname,
              :presence => { :message => "il nickname non può essere vuoto"},
              :length => { :message => " la lunghezza deve essere tra 3 e 20 caratteri",
                           :minimum => 3, :maximum => 20},
              :uniqueness => {:message => "il nickname è già in uso"}

  validates :password,
              :presence => { :message => "il password non può essere vuoto"},
              :length => { :message => " la lunghezza deve essere tra 3 e 20 caratteri",
                           :minimum => 3, :maximum => 20},
              :confirmation => { :message => "password non coincide" }
end
