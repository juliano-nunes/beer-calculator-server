class BeersCalculatorController < ApplicationController
  before_action only: [:create]

  # POST /best-style
  def findBestStyle
    style = BeersCalculatorService.new(Beer.all).findBestStyleBasedOnTemperature(params[:temperature])

    render json: { beer_style: style }
  end
end
