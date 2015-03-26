class MediaCollectionsController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_media_collection, only: [:show, :edit, :update, :destroy, :new_item, :create_item]
  

  # GET /media_collection
  def show
    if @media_collection.nil?
      redirect_to edit_media_collection_path, notice: "Create your collection first"
    else
      @media_collection
    end
  end


  # GET /media_collection/edit
  def edit
    if @media_collection.nil?
      @media_collection = current_user.build_media_collection
      @media_collection.items.build
    else
      @media_collection = current_user.media_collection
    end
  end

  # POST /media_collection
  def create
    @media_collection = current_user.build_media_collection(media_collection_params)

    if @media_collection.save
      redirect_to media_collection_url, notice: 'Media collection was successfully created.'
    else
      render :edit
    end
  end

  # PATCH/PUT /media_collection
  def update
    if @media_collection.update(media_collection_params)
      redirect_to media_collection_url, notice: 'Media collection was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /media_collection
  def destroy
    @media_collection.destroy
    redirect_to media_collection_url, notice: 'Media collection was successfully destroyed.'
  end

  def new_item
    if @media_collection.nil?
      redirect_to edit_media_collection_path, notice: "Create your collection first"
    else
      @item = current_user.media_collection.items.build
    end
  end

  def create_item
    item = @media_collection.items.create(item_params)
    if item.save
      redirect_to media_collection_url, notice: 'Item was added to collection.'
    else
      redirect_to new_item_media_collection_path, alert: "item is not valid"
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_media_collection
      @media_collection = current_user.media_collection
    end

    # Only allow a trusted parameter "white list" through.
    def media_collection_params
      params.require(:media_collection).permit(:title, :description, :shared, items_attributes: [:id, :title, :body, :photo, :_destroy])
    end

    def item_params
      params.require(:item).permit(:title, :body, :photo)
    end

end
