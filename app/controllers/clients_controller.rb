class ClientsController < ApplicationController
  before_action :find_client, only: [:show, :edit, :update, :destroy]

# TO DO
# AGE
# Zodiac sign
# SPIRAL OF THE DAY

  def index
    @clients = Client.all
  end

  def new
    @client = Client.new
  end

  def create
    @client = Client.new(client_params)
    @client.save

    redirect_to client_path(@client)
  end

  def show
    @spiral
  end

  def edit
  end

  def update
    @client.update(client_params)

    redirect_to client_path(@client)
  end

  def destroy
    @client.destroy

    redirect_to clients_path
  end

  private

  def find_client
    @client = Client.find(params[:id])
  end

  def client_params
    params.require(:client).permit(:name, :name1, :name2, :name3, :surname, :surname1, :surname2, :surname3, :birth_day, :birth_month, :birth_year, :phone, :email)
  end
end
