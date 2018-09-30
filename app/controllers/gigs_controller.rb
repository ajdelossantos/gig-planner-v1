class GigsController < APIController
  def index
    @gigs = Gig.all
    render json: @gigs.to_json
  end

  def show
    @gig = Gig.find(params[:id])
    render json: @gig.stringify_gig_metadata.to_json
  end
end
