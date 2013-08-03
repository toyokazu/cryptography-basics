# -*- coding: utf-8 -*-
class BinaryNumberExercisesController < ApplicationController
  include BinaryNumberFunctions
  include SharedFunctions
  
  before_filter :extract_params
  
  def exercise1
    generate_answer1
  end
  
  def check1
    check(session["binary_number"]["number"] == params["answer"].to_i)
  end
  
  def exercise2
    generate_answer1
  end
  
  def check2
    @user_answer = "0" * (@nbits - params["answer"].length) + params["answer"]
    @answer = "%0#{@nbits}b" % session["binary_number"]["number"]
    check(@answer == @user_answer)
  end
end
