
module Enumerable

  def my_each
    return self.to_enum unless block_given?
    for i in self
      yield i
    end
  end

  def my_each_with_index
    return self.to_enum unless block_given?
    i = 0
    for element in self
      yield element, i
      i+=1
    end
  end

  def my_select
    container = Array.new
    self.my_each do |element|
      container << element if yield(element)
    end
    container
  end

  def my_all?
    status = true
    self.my_each {|element| status = false if !yield(element) }
    return status
  end

  def my_anny?
    status = false
    self.my_each {|element| status = true if yield(element)}
    return status
  end
 
  def my_none?
    status = true
    self.my_each {|elm| status = false if yield(elm)}
    return status
  end

  def my_count(test=nil)
    if !block_given? && test.nil?
      return self.size
    end

    count = 0
    self.my_each do |element|
      if block_given? && yield(element)
        count += 1
      end
    end

    count
  end

  def my_map(proc=nil)
    container = Array.new
    for el in self
      if block_given?
        container << yield(el)
      else
        container << proc.call(el)
      end
    end
    container
  end

  def my_inject(*args)
    if args.length != 0
      return_val = args.first
      self.my_each { |el| return_val = yield(return_val, el)}
    else
      return_val = self[0]
      self[1..-1].my_each { |el| return_val = yield(return_val, el)}
    end
    return_val
  end

  


end