# -*- coding: utf-8 -*-
module SimpleSubstitutionCipherFunctions
  extend ActiveSupport::Concern
  
  SMALL_A = 'a'.bytes.to_a[0]
  LARGE_A = 'A'.bytes.to_a[0]

  def extract_params
    options = {
      "key" => (0..25).sort_by{rand}
    }.merge(params)
    @key = options["key"].map {|k| k.to_i}
    @inv_key = []
    @key.each_with_index {|k, i| @inv_key[k] = i}
  end
  
  def encrypt(plain)
    encrypted = plain.bytes.to_a.map do |code|
      (@key[code - SMALL_A] % 26 + LARGE_A).chr
    end.join
    encrypted
  end
  
  def decrypt(encrypted)
    plain = encrypted.bytes.to_a.map do |code|
      (@inv_key[code - LARGE_A] % 26 + SMALL_A).chr
    end.join
    plain
  end
  
  def generate_answer1
    @words = Word.where("length(spell)<=3")
    @plain = @words[rand * @words.size].spell
    @encrypted = encrypt(@plain)
    session["simple_substitution_cipher"] = {
      "plain" => @plain,
      "encrypted" => @encrypted,
      "key" => @key
    }
  end
end