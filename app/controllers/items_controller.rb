class ItemsController < ApplicationController	                   
  def create
    @item = Item.create params[:item]
    render json: @item
  end
end