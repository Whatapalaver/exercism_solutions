class Array
  # yield will be replaced by the contents of any block when the method is invoked
  # { |e| e < 10 }
  def keep
    result = []
    each { |e| result << e if (yield e) }
    result
  end

  def discard
    result = []
    each { |e| result << e if (!yield e) }
    result
  end
end
