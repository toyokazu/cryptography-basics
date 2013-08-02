class CaesarCipherBruteForceController < ApplicationController
  include CaesarCipherFunctions
  before_filter :extract_params

  def index
    generate_answer1(4)
    @before = @plain
    @after = encrypt(@before, @key)
    @brute_force = []
    (0..25).each do |key|
      @brute_force << decrypt(@after, key)
    end
  end
end
