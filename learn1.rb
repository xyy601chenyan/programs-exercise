con = []

a1= [1,1,2,3,4,1,2,3,4,5,6,4,32,5,5,5,5,5,5]

while a1 !=[]
  a1.each do |x|
    temp= a1.clone
    a1.delete(x)

    if a1.length + 2 <= temp.length
      con.push(x)
    end
  end

end

puts con.to_s
