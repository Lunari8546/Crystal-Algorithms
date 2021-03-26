array = Array(Int32).new
size = 100

until array.size >= size # Append random Int32s to 'array' until the size of 'array' matches 'size'.
    array.push(rand(0...10000))
end

puts array