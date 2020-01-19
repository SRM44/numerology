class ThemesController < ApplicationController
  def index
    @themes = Theme.all
  end

  def show
    @theme = Theme.find(params[:id])
    spiral
    letters_to_numbers
    count_numbers
  end

  def spiral
    @physics = @theme.birth_day.to_s.chars.map(&:to_i).sum.to_s.chars.map(&:to_i).sum
    @emotional = @theme.birth_month.to_s.chars.map(&:to_i).sum.to_s.chars.map(&:to_i).sum
    @mental = (@physics + @emotional).to_s.chars.map(&:to_i).sum.to_s.chars.map(&:to_i).sum
    @creative = @theme.birth_year.to_s.chars.map(&:to_i).sum.to_s.chars.map(&:to_i).sum
    @path = (@physics + @emotional + @creative).to_s.chars.map(&:to_i).sum.to_s.chars.map(&:to_i).sum
  end

  def letters_to_numbers
    @fullname = (@theme.name + @theme.surname).downcase.chars
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

  def new
    @theme = Theme.new
  end

  def create
    @theme = Theme.new(theme_params)
    @theme.save
    redirect_to theme_path(@theme)
  end

  private

  def theme_params
    params.require(:theme).permit(:name, :surname, :birth_day, :birth_month, :birth_year)
  end
end
