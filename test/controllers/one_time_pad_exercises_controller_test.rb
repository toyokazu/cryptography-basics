require 'test_helper'

class OneTimePadExercisesControllerTest < ActionController::TestCase
  test "should get exercise1" do
    get :exercise1
    assert_response :success
  end

end
