class Client < ApplicationRecord
  def age
    now = Time.current
    @dob = Date.new(@theme.birth_year,@theme.birth_month,@theme.birth_day)
    now.year - @dob.year - ((now.month > @dob.month || (now.month == @dob.month && now.day >= @dob.day)) ? 0 : 1)
  end
end
