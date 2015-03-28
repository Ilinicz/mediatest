class VisitorsController < ApplicationController

  def index
    @shared_collections = MediaCollection.preload(:user).shared
  end

  def show
    @shared_collection = MediaCollection.shared.find_by_id(params[:id])
  end

end