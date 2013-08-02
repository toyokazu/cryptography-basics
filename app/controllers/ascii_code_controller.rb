class AsciiCodeController < ApplicationController
  include AsciiCodeFunctions
  
  before_filter :extract_params
  
  def index
  end
end
