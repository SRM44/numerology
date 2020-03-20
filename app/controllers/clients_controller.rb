class ClientsController < ApplicationController
  before_action :find_params, only: [:show, :destroy]

# TO DO
# AGE
# Zodiac sign
# SPIRAL OF THE DAY

  def new
    @client = Client.new
  end

  def create
    @client = Client.new(client_params)
    @client.save

    redirect_to client_path(@client)
  end

  def edit
  end

  def update
  end

  def index
    @clients = Client.all
  end

  def show
  end

  def destroy
    @client.destroy

    redirect_to clients_path
  end

  private

  def find_params
    @client = Client.find(params[:id])
  end

  def client_params
    params.require(:client).permit(:name, :name1, :name2, :name3, :surname, :surname1, :surname2, :surname3, :birth_day, :birth_month, :birth_year, :phone, :email)
  end
end
