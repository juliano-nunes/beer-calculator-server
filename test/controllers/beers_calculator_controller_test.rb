require 'test_helper'

class BeersCalculatorControllerTest < ActionDispatch::IntegrationTest

  test "should calculate best beer" do
    expected_response(123.0, "Teste 1")
    expected_response(111.0, "Teste 1")
    expected_response(10.0, "Teste 2")
    expected_response(-10.0, "Teste 2")
  end

  def expected_response(temp, expected_beer)
    post "best-style", params: { temperature: temp }, as: :json
    assert_response 200
    beer = JSON.parse(@response.body)
    assert_equal expected_beer, beer['beer_style']
  end

end
