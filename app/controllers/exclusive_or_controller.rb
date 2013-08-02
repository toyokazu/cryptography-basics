class ExclusiveOrController < ApplicationController
  include BinaryNumberFunctions
  before_filter :extract_params
  
  def index
  end
end
