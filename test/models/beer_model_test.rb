require 'test_helper'

class BeerModelTest < ActiveSupport::TestCase
  setup do
    @beer = beers(:one)
  end

  test "Should calculate average between min and max temp" do
    assert @beer.average_temp == 123
  end
end
