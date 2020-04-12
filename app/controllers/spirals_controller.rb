class SpiralsController < ApplicationController

  def create
    @spiral = Spiral.new(spiral_params)
    @client = Client.find(params[:client_id])
    @spiral.client = @client

    if @spiral.save
      redirect_to client_path
    else
      render 'clients/show'
    end
  end

  private

  def spiral_params
    params.require(:spiral).permit(:physics, :emotional, :mental, :creative, :path)
  end

# la spirale prend des colonne de Client
# calcul du chiffre
# association du chiffre a la colonne de la spirale
# validation : toutes les colonnes doivent etre renseigne

#REDUCE
# Tant que le chiffre n'est pas compris entre 1 et 9
# Appliquer le calcul pour reduire le chiffre

    #1 red
    #2 bleu
    #3 jaune
    #4 marron
    #5 vert clair
    #6 rose
    #7 violet
    #8 vert foncé
    #9 safran / blanc

    # IMPLEMENT IN SPIRAL & LIFE MAP
  # IF 11, 22 ou 33 = 11/2, 22/4, 33/6
  # if x ÷ y = 5,5 return x/y
  # else return
  def power(number)
    references = (1..9).to_a
    references.each do |ref|
      number/ref = 5.5 ? `"#{number}/#{ref}"` : number
    end
  end
end
