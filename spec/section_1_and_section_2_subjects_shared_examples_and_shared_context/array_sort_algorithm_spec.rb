# -----------------------Bubble sort (array sort algorithm)----------------
class Sort
    attr_accessor :arr
def initialize(arr)
    array_length = arr.length 

    return arr if array_length < 2

    max_index = array_length - 2

    swapped_elements = true

    while swapped_elements do 
        swapped_elements = false
        
        (0..max_index).each do |i|
            element = arr[i] 
            next_element = arr[i+1] 
            if element > next_element 
                arr[i] , arr[i+1] = next_element , element 
                swapped_elements = true
            end
        end
    end

    
    @arr = arr
end
end

# p sort([80, 19, 21, 45, 2, 10, 11, 11, 70, 15])

# # p sort([4,3,1,2])
# assert_equal.sort( [1,2,3,4], [4,3,1,2], failure_message = nil )
# p sort([])

# p sort([1,2,2,2])

# p sort([3,2,2,1])

RSpec.describe Sort do 
    
    it 'should return sorted array' do 
        sort = Sort.new([4,3,1,2])
        expect(sort.arr).to eq([1,2,3,4])
    end

    it 'should return sorted array' do 
        sort = Sort.new([])
        expect(sort.arr).to eq(nil)
    end

    it 'should return sorted array' do 
        sort = Sort.new([3,2,2,2,1])
        expect(sort.arr).to eq([1,2,2,2,3])
    end

    it 'should return sorted array' do 
        sort = Sort.new([80, 19, 21, 45, 2, 10, 11, 11, 70, 15])
        expect(sort.arr).to eq([2,10,11,11,15,19,21,45,70,80])
    end
end