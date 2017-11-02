require 'test_helper'

class AutosControllerTest < ActionDispatch::IntegrationTest
  test "should get mostrar" do
    get autos_mostrar_url
    assert_response :success
  end

end
