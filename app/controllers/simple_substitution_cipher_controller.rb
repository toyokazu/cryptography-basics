class SimpleSubstitutionCipherController < ApplicationController
  include SimpleSubstitutionCipherFunctions
  before_filter :extract_params
  
  def index
    @before = "akiyama"
    @after = encrypt(@before)
  end
end
