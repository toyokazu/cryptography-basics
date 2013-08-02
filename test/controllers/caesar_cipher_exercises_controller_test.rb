require 'test_helper'

class CaesarCipherExercisesControllerTest < ActionController::TestCase
  test "should get exercise1" do
    get :exercise1
    assert_response :success
  end

end
