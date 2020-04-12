class Client < ApplicationRecord
  has_one :spiral, dependent: :destroy
  after_save :create_spiral

  def fullname
    self.name.capitalize + " " + self.surname.capitalize
  end
end
