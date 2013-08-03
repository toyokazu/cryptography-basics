class OneTimePadExercisesController < ApplicationController
  include OneTimePadFunctions
  before_filter :extract_params
  
  def exercise1
    generate_answer1
  end
  
  def check1
    check(session["one_time_pad"]["encrypted"].join == params["answer"])
  end
  
  def exercise2
    generate_answer1
  end
  
  def check2
    check(session["one_time_pad"]["word"] == params["answer"])
  end
end
