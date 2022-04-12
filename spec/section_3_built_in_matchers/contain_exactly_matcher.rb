RSpec.describe 'contain_exactly_matcher' do 
    subject {[1,2,3]} 

    describe 'long syntax' do 
        it ' should check for the presence of all elements' do 
            expect(subject).to contain_exactly(1,2,3)
            expect(subject).to contain_exactly(3,2,1)
            expect(subject).to contain_exactly(2,3,1)
        end
    end

    it { is_expected.to contain_exactly(1,2,3) }
    it { is_expected.to contain_exactly(3,2,1) }
    it { is_expected.to contain_exactly(2,3,1) }
end