class GigsController < APIController
  def index
    @gigs = Gig.all
    render json: @gigs.to_json
  end

  def show
    @gig = Gig.find(params[:id])
    render json: @gig.to_json
  end
end
