class PeaksController < ApplicationController
  def index
    @peaks = Peak.all
  end

  def show
    @peak = Peak.find(params[:id])
  end

  def new
    @peak = Peak.new
  end

  def create
    @peak = Peak.new(peak_params)
    if @peak.save
      redirect_to @peak, notice: "Peak Report successfully created!"
      # render json: @peak, status: :created
    else
      render json: @peak.errors, status: :unprocessable_entity
    end
  end

  private

  def peak_params
    params.require(:peak).permit(:name, :range, :height, :domain, :relative_path, :description, :keywords, :report_date, :difficulty, :roundtrip_miles, :elevation_gain, :roundtrip_duration, :solo, :combo)
  end
end
