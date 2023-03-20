class PagesController < ApplicationController
  def home
    @categories = Category.all
    @items = Item.search(params).paginate(page: params[:page], per_page: 5)
  end
end
