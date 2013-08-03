class SimpleSubstitutionCipherExercisesController < ApplicationController
  include SimpleSubstitutionCipherFunctions
  include SharedFunctions
  before_filter :extract_params
  
  def exercise1
    generate_answer1
  end

  def check1
    check(session["simple_substitution_cipher"]["encrypted"] == params["answer"])
  end

  def exercise2
    generate_answer1
  end

  def check2
    check(session["simple_substitution_cipher"]["plain"] == params["answer"])
  end
end
