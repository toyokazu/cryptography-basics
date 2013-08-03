# -*- coding: utf-8 -*-
module AsciiCodeFunctions
  extend ActiveSupport::Concern
  
  include SharedFunctions
  
  def extract_params
    options = {
      "hint1" => "visible",
      "hint2" => "visible"
    }.merge(params)
    @hint1 = options["hint1"]
    @hint2 = options["hint2"]
  end
  
  def generate_answer1
    @words = Word.where("length(spell)<=3")
    @word = @words[rand * @words.size].spell
    @binary_array = word_to_binary_array(@word)
    session["ascii_code"] = {
      "word" => @word,
      "binary_array" => @binary_array
    }
  end
end