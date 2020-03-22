class ExperienceField < ApplicationRecord
  belongs_to :theme

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
end
