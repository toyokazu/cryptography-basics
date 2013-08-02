class OneTimePadController < ApplicationController
  include OneTimePadFunctions
  before_filter :extract_params
  
  def index
    @before = "get"
    @after = split_binary_str(encrypt(word_to_binary_str(@before)))
    @key_array = split_binary_str(@key)
  end
end
