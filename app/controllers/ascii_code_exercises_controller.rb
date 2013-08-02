class AsciiCodeExercisesController < ApplicationController
  include AsciiCodeFunctions
  include SharedFunctions
  
  before_filter :extract_params
  
  def exercise1
    generate_answer1
  end

  def check1
    @user_answer = params["answer"]
    check(session[:answer][:binary_str] == @user_answer)
    @user_answer = split_binary_str(@user_answer)
    @answer = split_binary_str(session[:answer][:binary_str])
  end

  def exercise2
    generate_answer1
    @binary_array = split_binary_str(session[:answer][:binary_str])
  end

  def check2
    @user_answer = params["answer"]
    check(session[:answer][:word] == @user_answer)
    @binary_array = split_binary_str(session[:answer][:binary_str])
  end
end
