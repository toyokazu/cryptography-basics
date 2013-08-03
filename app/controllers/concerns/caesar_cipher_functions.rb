# -*- coding: utf-8 -*-
module CaesarCipherFunctions
  extend ActiveSupport::Concern
  
  SMALL_A = 'a'.bytes.to_a[0]
  LARGE_A = 'A'.bytes.to_a[0]
  
  def extract_params
    options = {
      "key" => "0"
    }.merge(params)
    @key = options["key"].to_i
  end
  
  def encrypt(plain, key)
    encrypted = plain.bytes.to_a.map do |code|
      (((code - SMALL_A) + key) % 26 + LARGE_A).chr
    end.join
    encrypted
  end
  
  def decrypt(encrypted, key)
    plain = encrypted.bytes.to_a.map do |code|
      (((code - LARGE_A) + key) % 26 + SMALL_A).chr
    end.join
    plain
  end
  
  def generate_answer1(length=3)
    @words = Word.where("length(spell)<=?", length)
    @plain = @words[rand * @words.size].spell
    @encrypted = encrypt(@plain, @key)
    session["caesar_cipher"] = {
      "plain" => @plain,
      "encrypted" => @encrypted,
      "key" => @key
    }
  end
end