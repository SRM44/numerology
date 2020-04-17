class Theme < ApplicationRecord

  
  # TO DO
  # AGE
  # Zodiac sign
  # SPIRAL OF THE DAY
  # COLOR
    #1 red
    #2 bleu
    #3 jaune
    #4 marron
    #5 vert clair
    #6 rose
    #7 violet
    #8 vert foncé
    #9 safran / blanc


  def fullname
    self.name.strip.capitalize + " " + self.surname.strip.capitalize
  end

  def detailled_name
    self.name.strip.capitalize + " " + self.name1.strip.capitalize  + " " + self.name2.strip.capitalize   + " " + self.name3.strip.capitalize + " " + self.surname.strip.capitalize + " " + self.surname1.strip.capitalize  + " " + self.surname2.strip.capitalize   + " " + self.surname3.strip.capitalize
  end

#SPIRAL CALCULATION

  def power(number)
    if [11, 22, 33].include? number
      "#{number}/#{(number/5.5).to_i}"
    else
      calculation(number)
    end
  end

  def calculation(number)
    total = number.to_s.chars.map(&:to_i).sum
    total > 9 ? power(total) : total
  end

  def physics
    number = self.birth_day
    power(number)
  end

  def emotional
    number = self.birth_month
    power(number)
  end

  def mental
    number = (self.birth_day + self.birth_month)
    power(number)
  end

  def creative
    number = self.birth_year
    power(number)
  end

  def path
    number = (self.birth_day + self.birth_month + self.birth_year)
    power(number)
  end

# LIFE MAP CALCULATION
  def action_one
    (self.birth_day + self.birth_month).to_s.chars.map(&:to_i).sum.to_s.chars.map(&:to_i).sum
  end

  def action_two
    (self.birth_day + self.birth_year).to_s.chars.map(&:to_i).sum.to_s.chars.map(&:to_i).sum
  end

  def action_three
    (action_one + action_two).to_s.chars.map(&:to_i).sum.to_s.chars.map(&:to_i).sum
  end

  def action_four
    (self.birth_month + self.birth_year).to_s.chars.map(&:to_i).sum.to_s.chars.map(&:to_i).sum
  end

end
