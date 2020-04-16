class ThemesController < ApplicationController
  before_action :find_params, only: [:show, :edit, :update, :spiral, :destroy]

# Pages

  def index
    @themes = Theme.all
  end

  def show

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

  private

  def find_params
    @theme = Theme.find(params[:id])
  end

  def theme_params
    params.require(:theme).permit(:name, :name1, :name2, :name3, :surname, :surname1, :surname2, :surname3, :birth_day, :birth_month, :birth_year, :phone, :email)
  end
end
