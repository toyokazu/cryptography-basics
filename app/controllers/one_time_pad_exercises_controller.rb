class OneTimePadExercisesController < ApplicationController
  include OneTimePadFunctions
  before_filter :extract_params
  
  def exercise1
    generate_answer1
    @key_array = split_binary_str(@key)
  end
  
  def check1
    @user_answer = params["answer"]
    check(session[:answer][:encrypted] == @user_answer)
    @user_answer = split_binary_str(@user_answer)
    @answer = split_binary_str(session[:answer][:encrypted])
    @plain = split_binary_str(session[:answer][:plain])
    @key_array = split_binary_str(session[:answer][:key])
  end
  
  def exercise2
    generate_answer1
    @encrypted = split_binary_str(session[:answer][:encrypted])
    @key_array = split_binary_str(@key)
  end
  
  def check2
    @user_answer = params["answer"]
    check(session[:answer][:word] == @user_answer)
    @encrypted = split_binary_str(session[:answer][:encrypted])
    @plain = split_binary_str(session[:answer][:plain])
    @key_array = split_binary_str(session[:answer][:key])
  end
end
