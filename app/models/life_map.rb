class LifeMap < ApplicationRecord
  def life_map
    @action1 = (@physics + @emotional).to_s.chars.map(&:to_i).sum
    @action2 = (@physics + @creative).to_s.chars.map(&:to_i).sum
    @action3 = (@action1 + @action2).to_s.chars.map(&:to_i).sum
    @action4 = (@emotional + @creative).to_s.chars.map(&:to_i).sum
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
