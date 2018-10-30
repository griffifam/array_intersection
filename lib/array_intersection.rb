# Creates a new array to return the intersection of the two input arrays
def counter(array)
  i = 0
  while array[i] != nil
    i += 1
  end
  return i
end

def sort(array)
  i = 0
  this = counter(array)

  while i < this
    if array[i + 1] > array[i]
      break
    else
      len = 0
      while array[i + 1] < array[i]
        len = array[i + 1]
        array[i + 1] = array[i]
        array[i] = len
        i + 1
      end
      i = 0
    end
    i += 1
  end
  return array
end

def intersection(array1, array2)
  intersection = []

  if array1 == nil || array2 == nil
    return intersection
  else

    alpha = counter(array1)
    beta = counter(array2)


    if alpha <= beta
      array1.each do |elem|
        array2.each do |num|
          if elem == num
            intersection << elem
          end
        end
      end
    elsif beta <= alpha
      array2.each do |elem|
        array1.each do |num|
          if elem == num
            intersection << elem
          end
        end
      end
    end

    this = sort(intersection)
  end
  return this
end
