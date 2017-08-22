
require 'benchmark'
arr1 = [1,1,2]
arr2 = [1,1,2,2]
arr3 = [1,2,3]

data=[]

def repeat_array(array)

unique_arr = []
dup_arr = []

array.each do |a|
  if unique_arr.include?(a)
    dup_arr << a

  else

    unique_arr << a
  end
end

  return dup_arr

end

Benchmark.bm do |x|

x.report{puts repeat_array(arr1).to_s}

x.report{puts repeat_array(arr2).to_s}

x.report{puts repeat_array(arr3).to_s}
end
