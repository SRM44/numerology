class ThemesController < ApplicationController
  before_action :find_params, only: [:show, :edit, :update, :spiral, :destroy]

# Pages

  def index
    @themes = Theme.all
  end

  def show
    experience_field
    letters_to_numbers
    results
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

  #EXPERIENCE FIELD CALCULATIONS
  def experience_field
    @fullname = (@theme.name.strip + @theme.name1.strip + @theme.name2.strip + @theme.name3.strip + @theme.surname.strip + @theme.surname1.strip + @theme.surname2.strip + @theme.surname3.strip).downcase.chars
  end

  def letters_to_numbers
    @fullname
    @reference = {}
    letters = ('a'..'z').to_a
    letters.each_with_index do |letter, index|
      @reference[letter] = (index) % 9 + 1
    end
  end

  def results
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

  private

  def find_params
    @theme = Theme.find(params[:id])
  end

  def theme_params
    params.require(:theme).permit(:name, :name1, :name2, :name3, :surname, :surname1, :surname2, :surname3, :birth_day, :birth_month, :birth_year, :phone, :email)
  end
end
