# Modules
require "uuid"

# Variables
array = Array(String).new
size = rand(20...100)

until array.size >= size # Append random UUIDs to 'array' until the size of 'array' matches 'size'.
    array.push(UUID.random().hexstring)
end

array = array.sort() # Sort 'array' to be in ascending order.

# target = UUID.random().hexstring # (false)
target = array[rand(0...array.size - 1)] # (True)

left = 0
right = array.size - 1

mid = (left + ((right - left) / 2)).round() # Get the rounded middle index of 'array'.

while left <= right # Algorithm
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