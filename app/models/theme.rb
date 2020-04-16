class Theme < ApplicationRecord

  def fullname
    self.name.capitalize + " " + self.surname.capitalize
  end

  def detailled_name

    self.name.capitalize + " " + self.name1.capitalize  + " " + self.name2.capitalize   + " " + self.name3.capitalize + " " + self.surname.capitalize + " " + self.surname1.capitalize  + " " + self.surname2.capitalize   + " " + self.surname3.capitalize
  end

  def physics
    number = self.birth_day
    calculation(number)
  end

  def emotional
    number = self.birth_month
    calculation(number)
  end

  def mental
    number = (physics + emotional)
    calculation(number)
  end

  def creative
    number = self.birth_year
    calculation(number)
  end

  def path
    number = (physics + emotional + creative)
    calculation(number)
  end

  def calculation(number)
    check = number.to_s.chars.map(&:to_i).sum
    power(check)
  end

  def power(number)
    if number == 11|22|33
      `#{number}/#{number/5.5}`
    else
      number.to_s.chars.map(&:to_i).sum
    end
  end

end
