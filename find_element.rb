require 'benchmark'

def binary_search(arr,element)
  l=0
  r = arr.length - 1  #不要把减号和1写的太近，否则当成-1来对待，产生报错
  arr.sort!

  while l<=r

    #mid = ((l + r)/2).floor #这行代码主要是考虑到数组内元素为奇数个时的处理方法,避免平均值溢出
    mid = l+(r-l)/2

    if arr[mid]== element
      return mid

    elsif arr[mid] > element
      r= mid -1
    else
      l= mid +1
    end
  end

    return "can not find the element"
  end


  arr1=[1,4,2,3,6,7,8,0,33,15]

  arr2= Array.new(10000){rand(10000)}

  arr3= Array.new(1000000){rand(3000)}

  puts binary_search(arr1,6)

  Benchmark.bm do |x|
    x.report("10个元素的运行效果"){binary_search(arr1,6)}
    x.report("10000个元素的运行效果"){binary_search(arr2,4556)}
    x.report("1000000个元素的运行效果"){binary_search(arr3,2345)}
  end
