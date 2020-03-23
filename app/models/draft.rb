# FOR MODELS

#EXP FIELD

 def fullname
    @fullname = (@theme.name.strip + @theme.name1.strip + @theme.name2.strip + @theme.name3.strip + @theme.surname.strip + @theme.surname1.strip + @theme.surname2.strip + @theme.surname3.strip).downcase.chars
  end

  def letters_to_numbers
    fullname
    @reference = {}
    letters = ('a'..'z').to_a
    letters.each_with_index do |letter, index|
      @reference[letter] = (index) % 9 + 1
    end
    @results = []
    @fullname.each do |letter|
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

#LIFE MAP
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


