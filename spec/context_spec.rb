# RSpec.describe '#even? method' do 
#     # it 'should return true if number is even' do 
#     #     expect(4.even?).to eq(true)
#     # end

#     # it 'should return false if number is odd' do 
#     #     expect(3.even?).to eq(false)
#     # end

#     context 'with even number' do 
#         it 'should return true' do 
#             expect(4.even?).to eq(true)
#         end
#     end

#     context 'with odd number' do 
#         it 'should return false' do 
#             expect(5.even?).to eq(false)
#         end
#     end

# end

RSpec.describe '#odd? method' do 
    context 'with odd number' do 
        it 'should return true if odd' do 
            expect(5.odd?).to eq(true)
        end
    end

    context 'with even number' do 
        it 'should return flase id even' do 
            expect(4.odd?).to eq(false) 
        end
    end
end