# -*- coding: utf-8 -*-
class BinaryNumberExercisesController < ApplicationController
  include BinaryNumberFunctions
  include SharedFunctions
  
  before_filter :extract_params
  
  def exercise1
    generate_answer1
  end
  
  def check1
    @user_answer = params["answer"].to_i
    check(session[:answer][:number] == @user_answer)
  end
  
  def exercise2
    generate_answer1
  end
  
  def check2
    @user_answer = params["answer"]
    @answer = "%0#{@user_answer.length}b" % session[:answer][:number]
    check(@answer == @user_answer)
  end
end
