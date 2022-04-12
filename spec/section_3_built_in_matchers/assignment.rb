# What is an alternate way to write the assertion below?
RSpec.describe 'test' do
    it 'should be true' do
        expect({}.empty?).to be(true)
        expect({}).to be_truthy
    end

# Write an assertion that validates that every element in the array [10, 20, 30] is even.

    arr = [10, 20, 30]
    it 'should be even' do
       
        expect(arr).to all(be_even)
    end

# Write an assertion that validates that every element in the array [0, 1, 2] is greater than or equal to 0.
    arr2 = [0, 1, 2]
        it 'should be greater than or equal to 0' do
        
            expect(arr2).to all(be >= 0)
        end
# Which of the values below are truthy and which are falsy? Submit your answer as two organized lists.

# truthy values are:

# "hello"
# 0
# -10
# []
# 99.99
# :hello
# true
# [1, 2, 3]

# flasy vlues are:

# false
# nil
end