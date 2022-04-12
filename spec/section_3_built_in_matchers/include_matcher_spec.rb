RSpec.describe 'include matcher' do 
    describe 'Hot Chocolate' do 
        it 'checks for substring inclusion' do 
            expect(subject).to include('Hot')
            expect(subject).to include('Cho')
            expect(subject).to include('late')
        end

        it { is_expected.to include('C') }
    end

    describe [20, 30, 40] do 
        it 'checks for inclusion in the array, regardless of the order' do 
            expect(subject).to include(20)
            expect(subject).to include(20, 30)
            expect(subject).to include(30, 40)
        end

        it { is_expected.to include(30, 20, 40) }
    end

    describe ({a: 2, b: 4}) do 
        it 'can check for key existance' do 
            expect(subject).to include(:b)
            expect(subject).to include(:b , :a)
            expect(subject).to include(:a, :b)
        end

        it { is_expected.to include(:a, :b) }

        it 'can check for key-value pair' do 
            expect(subject).to include(a: 2)

        end

        it { is_expected.to include(:a) }
        it { is_expected.to include(b: 4) }
    end





end