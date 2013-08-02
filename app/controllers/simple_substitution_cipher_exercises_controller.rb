class SimpleSubstitutionCipherExercisesController < ApplicationController
  include SimpleSubstitutionCipherFunctions
  include SharedFunctions
  before_filter :extract_params
  
  def exercise1
    generate_answer1
  end

  def check1
    @user_answer = params["answer"]
    check(session[:answer][:encrypted] == @user_answer)
  end

  def exercise2
    generate_answer1
  end

  def check2
    @user_answer = params["answer"]
    check(session[:answer][:plain] == @user_answer)
  end
end
