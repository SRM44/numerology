class Client < ApplicationRecord
  has_one :spiral, dependent: :destroy
  after_save :build_spiral

  def fullname
    self.name.capitalize + " " + self.surname.capitalize
  end

  def physics
    self.birth_day.to_s.chars.map(&:to_i).sum.to_s.chars.map(&:to_i).sum
  end

  def emotional
    self.birth_month.to_s.chars.map(&:to_i).sum.to_s.chars.map(&:to_i).sum
  end

  def mental
    (physics + emotional).to_s.chars.map(&:to_i).sum.to_s.chars.map(&:to_i).sum
  end

  def creative
    self.birth_year.to_s.chars.map(&:to_i).sum.to_s.chars.map(&:to_i).sum
  end

  def path
    (physics + emotional + creative).to_s.chars.map(&:to_i).sum.to_s.chars.map(&:to_i).sum
  end
end
