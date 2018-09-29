class BandsController < APIController
  def index
    @bands = Band.select("id, name, description").all
    render json: @bands.to_json
  end

  def show
    @band = Band.find(params[:id])
    render json: @band.to_json
  end
end
