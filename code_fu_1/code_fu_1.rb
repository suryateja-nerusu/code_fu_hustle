# ‘Print the second highest element within a list of numbers input from the command line’
def bubble_sort(array)
  n = array.length
  loop do
    swapped = false

    (n-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end

    break if not swapped
  end

  array
end
puts "Hello World!";
x = Array.new
n=x.length
#puts "enter values:"
#y = ''
#while y !=#nill
#  y = gets.chomp
#  x.push y
#end
#x.delete ('')
#x.compact
x = ARGV.map {|n| n.to_i }
puts bubble_sort(x)
puts "second highest number"
puts x[n-2]
puts "Objects in array: " + x.size.to_s
