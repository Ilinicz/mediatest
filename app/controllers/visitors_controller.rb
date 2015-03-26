class VisitorsController < ApplicationController

  def index
    @shared_collections = MediaCollection.preload(:user).shared
  end

  def show
    @shared_collection = MediaCollection.find_by_id(params[:id])
  end

end