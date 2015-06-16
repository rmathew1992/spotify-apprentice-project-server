class V1::MixtapesController < ApplicationController
  def index

  end

  def create
    mixtape = MixtapeMaker.generate(params[:number_of_songs], artists: params[:artist])
    render json: mixtape
  end

end
