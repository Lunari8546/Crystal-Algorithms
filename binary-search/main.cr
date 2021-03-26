array = Array(Int32).new
size = 100

until array.size >= size # Append random Int32s to 'array' until the size of 'array' matches 'size'.
    array.push(rand(0...10000))
end

array = array.sort() # Sort 'array' to be in ascending order.

printf "#{array}\n\nSearch : "
target = gets().not_nil!.chomp.to_i() # Wait user input.

startTime = Time.monotonic() # Start timer.

left = 0
right = array.size - 1

mid = (left + ((right - left) / 2)).round() # Get the rounded middle index of 'array'.

count = 0

while left <= right # Algorithm (Exit program when 'target' does not exists)
    mid = left + ((right - left) / 2)

    if array[mid.to_i()] == target
        puts "Target(#{target}) exists at array[#{mid.to_i()}]. Final Time Elapsed: #{startTime - Time.monotonic()} with #{count + 1} Iterations."
        break
    elsif target < array[mid.to_i()]
        right = mid.to_i() - 1
    else
        left = mid.to_i() + 1
    end

    count += 1

    puts "Iteration #{count} │ Time Elapsed: #{startTime - Time.monotonic()}"
end