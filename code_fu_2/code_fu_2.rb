# Problem statement: to find the neighbours of a given element in a M*N matrix
p "enter row size"
row = gets.to_i
p "enter column size"
col = gets.to_i
p "row size:#{row}and col size:#{col}"

#decalring global variables
 $posx = 0
 $posy = 0

 #declaring a M*N matrix
x=Array.new(row) {Array.new(col)}
p "enter matrix"
for i in 0..(row-1)
  for j in 0..(col-1)
    x[i][j]=gets.to_i
  end
end

# enter element whose neighbours has to be found
puts "enter number whose neighbours are to be found"
num = gets.to_i

#to find position of the target element
for i in 0..(row-1)
  for j in 0..(col-1)
    if(x[i][j]==num)
      posx=i
      posy=j
    end
  end
end
p "x position:#{posx} and y position:#{posy} of #{num}"
p "neighbours of #{num} are:"

#to find neighbours
for i in posx-1..posx+1
  for j in posy-1..posy+1
    if (!(posx == i && posy == j)&& i >=0 &&  j>=0 && i<row && j<col)
      p x[i][j]
    end
  end
end

