class Spiral < ApplicationRecord
  belongs_to :client

  def physics
    @client = Client.find(params[:client_id])
    @spiral.client = @client
    @physics = @client.birth_day
    physics.save
  end
  #physics
  #emotional
  #mental
  #creative
  #path

end
