class ExpressionField < ApplicationRecord
  belongs_to :theme

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
