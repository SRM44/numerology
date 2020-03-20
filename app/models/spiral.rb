class Spiral < ApplicationRecord
  def spiral
    #1 red
    #2 bleu
    #3 jaune
    #4 marron
    #5 vert clair
    #6 rose
    #7 violet
    #8 vert foncé
    #9 safran / blanc

    @physics = @theme.birth_day.to_s.chars.map(&:to_i).sum.to_s.chars.map(&:to_i).sum
    @emotional = @theme.birth_month.to_s.chars.map(&:to_i).sum.to_s.chars.map(&:to_i).sum
    @mental = (@physics + @emotional).to_s.chars.map(&:to_i).sum.to_s.chars.map(&:to_i).sum
    @creative = @theme.birth_year.to_s.chars.map(&:to_i).sum.to_s.chars.map(&:to_i).sum.to_s.chars.map(&:to_i).sum
    @path = (@physics + @emotional + @creative).to_s.chars.map(&:to_i).sum.to_s.chars.map(&:to_i).sum
  end

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
