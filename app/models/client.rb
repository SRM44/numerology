class Client < ApplicationRecord
  has_one :theme
  has_one :spiral, :through => :theme
  has_one :life_map, :through => :theme
  has_one :experience_field, :through => :theme
  has_one :expression_field, :through => :theme

  def age
    now = Time.current
    @dob = Date.new(@theme.birth_year,@theme.birth_month,@theme.birth_day)
    now.year - @dob.year - ((now.month > @dob.month || (now.month == @dob.month && now.day >= @dob.day)) ? 0 : 1)
  end
end
