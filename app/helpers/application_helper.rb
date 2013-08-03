module ApplicationHelper
  def split_binary_str(binary_str)
    binary_str.scan(/.{8}|.+$/)
  end
end
