require 'benchmark'

arr1 = [1,1,2]
arr2 = [1,1,2,2]
arr3 = [1,2,3]

def find_dup(arr)
  unique_hash = {}
  dup_arr = []

  arr.each do |a|
    if unique_hash[a] #如果unique_hash这个散列中含有数组元素作为的key，则返回true，否则返回false
      dup_arr << a
    else
      unique_hash[a] = true  #当判断条件为false时，执行该语句，该语句将会以当前数组正在遍历的元素作为散列的key，把true作为value
      #unique_hash[a] = "hello"
                            #这里的true只是赋值，而不是作为判断条件，因此不要搞混淆了，这里的true你可以换做任何值，比如false，1，"hello"等
    end
  end

  return dup_arr

end

Benchmark.bm do |x|

x.report{ puts find_dup(arr1).to_s}

x.report{ puts find_dup(arr2).to_s}

x.report{ puts find_dup(arr3).to_s}

end
