# -*- coding: utf-8 -*-
module OneTimePadFunctions
  extend ActiveSupport::Concern

  include SharedFunctions
  
  def extract_params
    options = {
      "length" => "3",
    }.merge(params)
    @length = options["length"].to_i
    if params["key"].nil?
      @key = Array.new(@length).map {"%08b" % (rand * 255)}
    else
      @key = params["key"]
    end
  end
  
  def encrypt(plain)
    encrypted = []
    (0..(plain.length-1)).each do |i|
      encrypted << "%08b" % (binary_str_to_binary(plain[i]) ^ binary_str_to_binary(@key[i]))
    end
    encrypted
  end
  
  def decrypt(encrypted)
    plain = []
    (0..(encrypted.length-1)).each do |i|
      plain << "%08b" % (binary_str_to_binary(encrypted[i]) ^ binary_str_to_binary(@key[i]))
    end
    plain
  end
  
  def generate_answer1
    @words = Word.where("length(spell)<=?", @length)
    @word = @words[rand * @words.size].spell
    @plain = word_to_binary_array(@word)
    @encrypted = encrypt(@plain)
    session["one_time_pad"] = {
      "word" => @word,
      "plain" => @plain,
      "encrypted" => @encrypted
    }
  end
end