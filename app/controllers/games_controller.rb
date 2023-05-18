class GamesController < ApplicationController
  def new
    # Afficher les lettres au hasard
    # Définir un array avec l'alphabet
    alphabet = ('a'..'z').to_a
    # Renvoyer 10 lettres au hasard
    @letters = alphabet.sample(10)
    # Formulaire où l’utilisateur peut taper un mot + bouton d’envoi
  end

  def score
    # Récupérer les éléments du formulaire
    @score = params[:word]
    # Effectuer la requête POST
    post 'score', params: score
    # Calculer le score
    # Afficher le score
  end
end
