class CaesarCipherController < ApplicationController
  include CaesarCipherFunctions
  before_filter :extract_params
  
  def index
    @before = "akiyama"
    @after = encrypt(@before, @key)
  end
end
