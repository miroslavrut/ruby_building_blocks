def bubble_sort(array)
  n = array.length
  swap = true
  
  while swap do
    swap = false
    0.upto(n-2) do |i|
      if(array[i] > array[i+1])
        array[i], array[i+1] = array[i+1], array[i]
        swap = true
      end
    end
  end
  p array
end

bubble_sort([4,3,78,2,0,2])

def bubble_sort_by(array)
  n = array.length
  swap = true

  while swap do
    swap = false
    0.upto(n-2) do |i|
      if yield(array[i], array[i+1]) > 0
        array[i], array[i+1] = array[i+1], array[i]
        swap = true
      end
    end
  end
  p array
end

bubble_sort_by(["hi","hello","hey"]) do |left,right|
  left.length - right.length
end