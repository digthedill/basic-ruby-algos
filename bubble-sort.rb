def bubble_sort(arr)
    arr.length.times do
        arr.each_with_index do |num, i|
            current = arr[i]
            next_val = arr[i + 1]
            if(arr.last != current)
            if(next_val < current)
                arr[i] = next_val
                arr[i + 1] = current
            end
        end
        end
    end
    arr
end

numbers = [99, 52, 11, 100, 77, -1, -88]

p bubble_sort(numbers)