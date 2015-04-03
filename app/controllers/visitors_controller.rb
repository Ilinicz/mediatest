class VisitorsController < ApplicationController

  def index
    @shared_collections = MediaCollection.preload(:user).shared
  end

  def show
    collection = MediaCollection.shared.find_by_id(params[:id])
    if collection 
      @shared_collection = collection
    else
      redirect_to root_path, notice: "Oops, collection not shared."
    end
  end

end