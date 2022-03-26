RSpec.describe 'shorthand syntax' do
    subject { 5 }

    context 'with classic syntax' do 
        it 'should give 5' do 
            expect(subject).to eq(5)
        end
    end

    context 'one linear syntax' do 
        it { is_expected.to eq(5) }
    end
end