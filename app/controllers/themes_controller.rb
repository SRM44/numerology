class ThemesController < ApplicationController
  before_action :find_params, only: [:show, :edit, :update, :spiral, :destroy]

# Pages

  def index
    @themes = Theme.all
  end

  def show
    letters_to_numbers
    count_numbers
    # life_map
  end

  def new
    @theme = Theme.new
  end

  def create
    @theme = Theme.new(theme_params)
    @theme.save

    redirect_to theme_path(@theme)
  end

  def edit
  end

  def update
    @theme.update(theme_params)

    redirect_to theme_path(@theme)
  end

  def destroy
    @theme.destroy

    redirect_to themes_path(@theme)
  end





def age
  now = Time.current
  @dob = Date.new(@theme.birth_year,@theme.birth_month,@theme.birth_day)
  now.year - @dob.year - ((now.month > @dob.month || (now.month == @dob.month && now.day >= @dob.day)) ? 0 : 1)
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

  #EXPERIENCE FIELD CALCULATIONS

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

  # LIFE MAP CALCULATION
  # def life_map
  #   @action1 = (@physics + @emotional).to_s.chars.map(&:to_i).sum
  #   @action2 = (@physics + @creative).to_s.chars.map(&:to_i).sum
  #   @action3 = (@action1 + @action2).to_s.chars.map(&:to_i).sum
  #   @action4 = (@emotional + @creative).to_s.chars.map(&:to_i).sum
  # end

  private

  def find_params
    @theme = Theme.find(params[:id])
  end

  def theme_params
    params.require(:theme).permit(:name, :name1, :name2, :name3, :surname, :surname1, :surname2, :surname3, :birth_day, :birth_month, :birth_year, :phone, :email)
  end
end
