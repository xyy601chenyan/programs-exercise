require "benchmark"
def binary_search(arr, element)
 # .... 你的实作放这里
 lo = 0
 hi = arr.length - 1
 arr.sort!

 while (lo<=hi)
   mid = lo + ((hi-lo)/2)

   if arr[mid] == element
     return mid
   elsif arr[mid] < element
     lo = mid + 1
   else
     hi = mid - 1
   end

end

return "The elemet can't be found."


end

arr = [0, 5, 13, 13, 30, 42, 52, 70, 85, 96, 103, 111, 116, 127, 130, 143, 150, 150, 161, 175, 207, 210, 218, 246, 257, 257, 263, 280, 304, 310, 326, 327, 332, 346, 360, 371, 374, 378, 406, 407, 407, 408, 428, 431, 437, 442, 445, 479, 489, 491, 505, 517, 520, 536, 548, 598, 602, 605, 618, 642, 649, 654, 659, 662, 677, 678, 682, 689, 695, 696, 697, 701, 711, 717, 727, 737, 745, 749, 754, 757, 770, 786, 802, 805, 814, 832, 840, 850, 853, 854, 888, 894, 904, 913, 913, 945, 962, 964, 972, 998]

arr1 = [1,3,6,9,12,38,45,56,77,78,]
arr2 = Array.new(10000){ rand(10000)}
arr3 = Array.new(1000000){rand(1000000)}

puts binary_search(arr, 371) # 应该回传 35

Benchmark.bm do |x|
  x.report("10") {
    binary_search(arr1, 45)
  }
  x.report("10000"){
    binary_search(arr2, 5676)
  }
  x.report("1000000"){
    binary_search(arr3,764521)
  }
end
