class Array
  # yield will be replaced by the contents of any block when the method is invoked
  # { |e| e < 10 }
  
  def keep(&block)
    result = []
    each { |e| result << e if (block[e]) }
    result
  end

  def discard(&block)
    result = []
    each { |e| result << e unless (block[e]) }
    result
  end
end
