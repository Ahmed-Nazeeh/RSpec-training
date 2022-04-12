RSpec.describe 'equality matchers' do 
    let(:a) {3.0}
    let(:b) {3} 

    describe 'eq matcher' do 
        it 'tests for value and ignores type' do
            expect(a).to eq(3)
            expect(b).to eq(3.0)
            expect(a).to eq(b)
        end
    end

    describe 'eql matcher' do 
        it 'tests for value, including same type' do
            expect(a).not_to eql(3)
            expect(b).not_to eql(3.0)
            expect(a).not_to eql(b)

            expect(a).to eql(3.0)
            expect(b).to eql(3)
        end
    end

    describe 'equal and be matcher' do 
        let(:c) {[1,2,3]} # it takes place in the memory
        let(:d) {[1,2,3]} # it taks another place inside the memory
        let(:e) {c}       # same same place in the memory

        it 'cares about object identity' do 
            expect(c).to eq(d)  # matching "value" 3 = 3.0
            expect(c).to eql(d) # matching "value" and "type" data type => 3 != 3.0

            expect(c).to equal(e) # matching "identity" which need to be same same place in the memory
            expect(c).to be(e) # same same as equal

            expect(c).not_to equal(d)
            expect(c).not_to equal([1,2,3])
        end
    end

end