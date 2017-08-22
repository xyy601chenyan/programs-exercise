arr=[1,1,2,2,3,3]

def find_repeat(array)
  a=[]
  while array!=[]

 array.each do |i|
   item = array.clone
   array.delete(i)

   if array.length + 2 <= item.length
     a.push(i)
   end
 end
  end

  return a
end

puts find_repeat(arr).to_s
