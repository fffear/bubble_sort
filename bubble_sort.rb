def bubble_sort array
    loop do
        @swap_elements = false
        sort_once(array)
        break if @swap_elements == false
    end
    p array
end

def sort_once array
    (array.length - 1).times do |i|
        if array[i] > array[i + 1]
            array[i], array[i + 1] = array[i + 1], array[i]
            @swap_elements = true
        end
    end
end

def bubble_sort_by(array) 
    loop do
        @swap_elements = false
        (array.length - 1).times do |i|
            if yield(array[i], array[i + 1]) > 0
                array[i], array[i + 1] = array[i + 1], array[i]
                @swap_elements = true
            end
        end
        break if @swap_elements == false
    end
    p array
end

bubble_sort([90, 30, 50, 2, 60, 100, -2, 45, 89])

bubble_sort_by(["hi", "hey", "hello"]) do | left, right |
    left.length - right.length
end