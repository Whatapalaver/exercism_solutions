class Array

# Multiple solutions presented here as it was a handy lesson in array methods

# Initial attempt using each and yield
# yield will be replaced by the contents of any block when the method is invoked
# { |e| e < 10 }

  def keep
    result = []
    each { |e| result << e if (yield e) }
    result
  end

  def discard
    result = []
    each { |e| result << e unless (yield e) }
    result
  end

# Now using each_with_object

  def keep
    each_with_object([]) do |e, result|
      result << e if yield e
    end
  end

  def discard
    each_with_object([]) do |e, result|
      result << e unless yeild e
    end
  end


# Here I am passing the block explicitly as an argument rather than using yield
# Also using inject/reduce
# It requires an implicit return of result as the block would reset the accumulator as nil when the conditional failed
# ugly
  
  def keep(&block)
    inject([]) do |result, e| 
      result << e if (block[e])
      result
    end
  end

  def discard(&block)
    inject([]) do |result, e| 
      result << e unless (block[e])
      result
    end
  end

# cheating (in this particular challenge) by using the convenience methods select and reject

  def keep
    select { |e| e if (yield e) }
  end

  def discard
    reject { |e| e if (yield e) }
  end
end
