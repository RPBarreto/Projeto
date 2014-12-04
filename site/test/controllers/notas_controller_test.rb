require 'test_helper'

class NotasControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get nota" do
    get :nota
    assert_response :success
  end

  test "should get frenquencia" do
    get :frenquencia
    assert_response :success
  end

end
