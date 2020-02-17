class ThemesController < ApplicationController
  before_action :find_params, only: [:show, :edit, :update]

  def index
    @themes = Theme.all
  end

  def show
    spiral
    letters_to_numbers
    count_numbers
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
  def spiral
    @physics = @theme.birth_day.to_s.chars.map(&:to_i).sum.to_s.chars.map(&:to_i).sum
    @emotional = @theme.birth_month.to_s.chars.map(&:to_i).sum.to_s.chars.map(&:to_i).sum
    @mental = (@physics + @emotional).to_s.chars.map(&:to_i).sum.to_s.chars.map(&:to_i).sum
    @creative = @theme.birth_year.to_s.chars.map(&:to_i).sum.to_s.chars.map(&:to_i).sum
    @path = (@physics + @emotional + @creative).to_s.chars.map(&:to_i).sum.to_s.chars.map(&:to_i).sum
  end

  def fullname
    @fullname = (@theme.name + @theme.name1 + @theme.name2 + @theme.name3 + @theme.surname + @theme.surname1 + @theme.surname2 + @theme.surname3).downcase.chars
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
    @counts = Hash.new 0
    @results.each do |result|
      @counts[result] += 1
    end
  end

  private

  def find_params
    @theme = Theme.find(params[:id])
  end

  def theme_params
    params.require(:theme).permit(:name, :name1, :name2, :name3, :surname, :surname1, :surname2, :surname3, :birth_day, :birth_month, :birth_year)
  end
end
