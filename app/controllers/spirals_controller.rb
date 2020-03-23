class SpiralsController < ApplicationController

  def create
    @spiral =Spiral.new(spiral_params)
    @client = Client.find(params[:client_id])
    @spiral.client = @client
    if @spiral.save
      redirect_to client_path(@spiral.client)
    else
      render 'clients/show'
    end
  end

  private

  def spiral_params
    params.require(:spiral).permit(:physics, :emotional, :mental, :creative, :path)
  end
end
