class ArtworkSharesController < ApplicationController
  def create

    shares = ArtworkShares.new
  end

  def destroy
  end

  private
  
  def artwork_shares_params
    debugger
    params.require(:artwork_shares).permit(:artwork_id, :viewer_id)

  end
end
