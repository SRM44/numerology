class Theme < ApplicationRecord
  belongs_to :client
  has_one :spiral
  has_one :life_map
  has_one :experience_field
  has_one :expression_field
end
