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

  def word_to_binary_array(word)
    word.bytes.to_a.map {|code| "%08b" % code}
  end
  
  def binary_str_to_binary(binary_str)
    "0b#{binary_str}".oct
  end
end