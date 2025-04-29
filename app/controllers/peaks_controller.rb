class PeaksController < ApplicationController
  def index
    @peaks = Peak.all
  end

  def show
    @peak = Peak.find(params[:id])
  end
end
