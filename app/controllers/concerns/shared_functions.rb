# -*- coding: utf-8 -*-
module SharedFunctions
  extend ActiveSupport::Concern
  
  def check(condition)
    if condition
      @result = "正解"
      else
      @result = "不正解"
    end
  end

  def word_to_binary_str(word)
    word.bytes.to_a.map {|code| "%08b" % code}.join
  end
  
  def binary_str_to_binary(binary_str)
    "0b#{binary_str}".oct
  end
  
  def split_binary_str(binary_str)
    binary_str.scan(/.{8}|.+$/)
  end
end