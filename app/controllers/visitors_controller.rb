class VisitorsController < ApplicationController

  def index
    @shared_collections = Rails.cache.fetch(:@shared_collections) do
      MediaCollection.preload(:user).shared
    end
  end

  def show
    @shared_collection = MediaCollection.shared.find_by_id(params[:id])
  end

end