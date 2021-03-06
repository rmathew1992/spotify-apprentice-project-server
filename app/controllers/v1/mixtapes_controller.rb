class V1::MixtapesController < ApplicationController
  def index

  end

  def create
    mixtape = MixtapeMaker.generate(params[:number_of_songs], artist_ids: params[:artist_ids])
    render json: mixtape, each_serializer: SongSerializer, root: 'mixtape', include: :artist
  end

end
