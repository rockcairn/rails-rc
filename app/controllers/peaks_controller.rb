class PeaksController < ApplicationController
  def index
    @peaks = Peak.order("id ASC").all
  end

  def show
    @peak = Peak.find(params[:id])
  end

  def edit
    @peak = Peak.find(params[:id])
  end

  def update
    @peak = Peak.find(params[:id])
    if @peak.update(peak_params)
      redirect_to @peak, notice: "Peak Report successfully updated!"
      # render json: @peak, status: :ok
    else
      render json: @peak.errors, status: :unprocessable_entity
    end
  end
  def destroy
    @peak = Peak.find(params[:id])
    @name = @peak.name
    @peak.destroy
    redirect_to peaks_path, alert: "Peak Report successfully deleted!", danger: "You just delete the Peak Report for #{@name}"
    # render json: { message: "Peak Report successfully deleted!" }, status: :ok
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
