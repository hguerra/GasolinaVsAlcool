require 'test_helper'

class GasolinaAlcoolControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get gasolina_alcool_index_url
    assert_response :success
  end

  test "should get convert" do
    get gasolina_alcool_convert_url
    assert_response :success
  end

end
