class SavedItemsController < ApplicationController
  before_action :set_saved_item, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @saved_items = SavedItem.includes(:idea).all
    # respond_with(@saved_items)
  end

  def show
    respond_with(@saved_item)
  end

  def new
    @saved_item = SavedItem.new
    respond_with(@saved_item)
  end

  def edit
  end

  def create
    @saved_item = SavedItem.new(saved_item_params)
    @saved_item.save
    respond_with(@saved_item)
  end

  def update
    @saved_item.update(saved_item_params)
    respond_with(@saved_item)
  end

  def destroy
    @saved_item.destroy
    respond_with(@saved_item)
  end

  private
    def set_saved_item
      @saved_item = SavedItem.find(params[:id])
    end

    def saved_item_params
      params.require(:saved_item).permit(:item_id)
    end
end
