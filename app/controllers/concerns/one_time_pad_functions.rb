# -*- coding: utf-8 -*-
module OneTimePadFunctions
  extend ActiveSupport::Concern

  include SharedFunctions
  
  def extract_params
    options = {
      "key" => "%024b" % (rand * 16777215)
    }.merge(params)
    @key = options["key"]
    @key_value = binary_str_to_binary(@key)
  end
  
  def encrypt(plain)
    "%024b" % (binary_str_to_binary(plain) ^ @key_value)
  end
  
  def decrypt(encrypted)
    "%024b" % (binary_str_to_binary(encrypted) ^ @key_value)
  end
  
  def generate_answer1
    @words = Word.where("length(spell)<=3")
    @word = @words[rand * @words.size].spell
    @plain = word_to_binary_str(@word)
    @encrypted = encrypt(@plain)
    session[:answer] = {
      :word => @word,
      :plain => @plain,
      :encrypted => @encrypted,
      :key => @key
    }
  end
end