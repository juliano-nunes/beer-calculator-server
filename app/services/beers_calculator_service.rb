class BeersCalculatorService
  def initialize(beers)
    @beers = beers
  end

  def findBestStyleBasedOnTemperature(temperature)
    processedBeers = calcDifference(temperature)

    best = sortByDiff(processedBeers).first

    best[:beer_style]
  end

  private
    def calcDifference(temperature)
      @beers.map { |beer| { beer_style: beer.style, diff: difference(temperature, beer.average_temp)  } }
    end

    def difference(temperature, average_temp)
      (temperature - average_temp).abs
    end

    def sortByDiff(processedBeers)
      processedBeers.sort_by{|beer| beer[:diff]}
    end
end
