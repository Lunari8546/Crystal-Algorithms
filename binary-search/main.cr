array = Array(Int32).new
size = 1000

until array.size >= size # Append random Int32s to 'array' until the size of 'array' matches 'size'.
    array.push(rand(0...10000))
end

array = array.sort() # Sort 'array' to be in ascending order.

printf "#{array}\n\nSearch : "
target = gets().not_nil!.chomp.to_i() # Wait user input.

left = 0
right = array.size - 1

mid = (left + ((right - left) / 2)).round() # Get the rounded middle index of 'array'.

while left <= right # Algorithm (Exit program when 'target' does not exists)
    mid = left + ((right - left) / 2)

    if array[mid.to_i()] == target
        puts "Target(#{target}) exists."
        break
    elsif target < array[mid.to_i()]
        right = mid - 1
    else
        left = mid + 1
    end
end