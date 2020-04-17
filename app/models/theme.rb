class Theme < ApplicationRecord

  def fullname
    self.name.strip.capitalize + " " + self.surname.strip.capitalize
  end

  def detailled_name
    self.name.strip.capitalize + " " + self.name1.strip.capitalize  + " " + self.name2.strip.capitalize   + " " + self.name3.strip.capitalize + " " + self.surname.strip.capitalize + " " + self.surname1.strip.capitalize  + " " + self.surname2.strip.capitalize   + " " + self.surname3.strip.capitalize
  end

#EXPERIENCE FIELD CALCULATIONS
  def experience_field
    (self.name.strip + self.name1.strip + self.name2.strip + self.name3.strip + self.surname.strip + self.surname1.strip + self.surname2.strip + self.surname3.strip).downcase.chars
  end

  def letters_to_numbers
    @reference = {}
    letters = ('a'..'z').to_a
    letters.each_with_index do |letter, index|
      @reference[letter] = (index) % 9 + 1
    end
  end

  def results
    @results = []
    @theme.experience_field.each do |letter|
      @results << @reference[letter]
    end
  end

  def count_numbers
    @counts = {
      1 => 0,
      2 => 0,
      3 => 0,
      4 => 0,
      5 => 0,
      6 => 0,
      7 => 0,
      8 => 0,
      9 => 0
    }
    @results.each do |result|
      @counts[result] += 1
    end
  end

#SPIRAL CALCULATION

    #1 red
    #2 bleu
    #3 jaune
    #4 marron
    #5 vert clair
    #6 rose
    #7 violet
    #8 vert foncé
    #9 safran / blanc

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


  # TO DO
  # AGE
  # Zodiac sign
  # SPIRAL OF THE DAY

  # EXPRESSION FIELD CALCULATION
  def expression_field
    cerebral =  ['a', 'h', 'j', 'n', 'p', 'g', 'l']
    physics =   ['e', 'w', 'd', 'm']
    emotive =   ['i', 'r', 'z', 'o', 'b', 's', 't', 'x']
    intuitive = ['k', 'q', 'u', 'y', 'c', 'v']

    # pour chaque lettre du tableau fullname
    # compter le nombre de lettre present dans les tableaux de reference
    #
  end
end
