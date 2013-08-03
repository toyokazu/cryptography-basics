class OneTimePadController < ApplicationController
  include OneTimePadFunctions
  before_filter :extract_params
  
  def index
    @before = "get"
    @plain = word_to_binary_array(@before)
    @after = encrypt(@plain)
  end
end
