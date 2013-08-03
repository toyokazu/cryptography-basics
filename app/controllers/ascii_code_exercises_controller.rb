class AsciiCodeExercisesController < ApplicationController
  include AsciiCodeFunctions
  include SharedFunctions
  
  before_filter :extract_params
  
  def exercise1
    generate_answer1
  end

  def check1
    check(session["ascii_code"]["binary_array"].join == params["answer"])
  end

  def exercise2
    generate_answer1
  end

  def check2
    check(session["ascii_code"]["word"] == params["answer"])
  end
end
