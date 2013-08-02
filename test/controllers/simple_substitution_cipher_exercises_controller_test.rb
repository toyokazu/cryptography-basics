require 'test_helper'

class SimpleSubstitutionCipherExercisesControllerTest < ActionController::TestCase
  test "should get exercise1" do
    get :exercise1
    assert_response :success
  end

  test "should get check1" do
    get :check1
    assert_response :success
  end

  test "should get exercise2" do
    get :exercise2
    assert_response :success
  end

  test "should get check2" do
    get :check2
    assert_response :success
  end

end
