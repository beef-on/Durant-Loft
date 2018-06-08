class InventoryController < ApplicationController
  def index
    @items = Item.all
    @new_item = Item.new
  end
end
