class MycartsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_mycart, only: %i[ follow ]
  def follow
  end

  def buy
  end

  private

  def set_mycart
    @cart = User.find(params[:id]) 
  end
end
