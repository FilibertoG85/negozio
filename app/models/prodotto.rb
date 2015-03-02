class Prodotto < ActiveRecord::Base
  belongs_to :utente

  validates :nome,
              :presence => { :message => "il nome non può essere vuoto"},
              :length => { :message => " la lunghezza deve essere tra 3 e 20 caratteri",
                           :minimum => 3, :maximum => 20}

  validates :image_url,
    :format => { :with => /(^$)|(^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?$)/ix,
              :message => "formato per l'url dell'immagine sbagliato"}

  validates :categoria,
              :presence => { :message => "inserire una categoria"}

  validates :descrizione,
              :presence => { :message => "la descrizione non può essere vuota"},
              :length => { :message => " la lunghezza deve essere tra 3 e 100 caratteri",
                           :minimum => 3, :maximum => 20}

  validate :utente_exsists

  private

  def utente_exsists
    valid = Utente.exists?(self.utente_id)
    self.errors.add(:utente_id, "inesistente") unless valid
  end

end
