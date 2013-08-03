# -*- coding: utf-8 -*-
module BinaryNumberFunctions
  extend ActiveSupport::Concern

  def extract_params
    options = {
      "nbits" => "5",
      "type" => "card",
      "hint1" => "visible",
      "hint2" => "visible",
    }.merge(params)
    @nbits = options["nbits"].to_i
    if @nbits > 8
      @nbits = 8
    end
    @type = options["type"]
    if @type !~ /(card)|(binary)/
      @type = "card"
    end
    @hint1 = options["hint1"]
    @hint2 = options["hint2"]
  end
  
  def generate_answer1
    @number = (rand * (2 ** @nbits)).to_i
    @binary = "%0#{@nbits}b" % @number
    session["binary_number"] = {
      "number" => @number,
      "binary" => @binary
    }
  end
end
