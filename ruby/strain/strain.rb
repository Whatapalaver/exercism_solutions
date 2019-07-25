class Array
  # yield will be replaced by the contents of any block when the method is invoked
  # { |e| e < 10 }
  def keep
    select { |e| e if (yield e) }
  end

  def discard
    reject { |e| e if (yield e) }
  end
end
