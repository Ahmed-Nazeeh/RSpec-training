RSpec.describe 'nested hook' do 
    before(:context) do 
        puts 'OUTER before context'
    end

    after(:context) do 
        puts 'OUTER after context'
    end

    before(:example) do 
        puts 'before example'
    end

    after(:example) do 
        puts 'after example'
    end

    it 'just simple math' do 
        expect(1 + 1).to eq(2)
    end

    context 'with condition A' do 
        before(:context) do 
            puts 'INNER before context'
        end
    
        after(:context) do 
            puts 'INNER after context'
        end

        before(:example) do 
            puts 'INNER before example'
        end
    
        after(:example) do 
            puts 'INNER after example'
        end

        it 'just another simple math' do 
            expect(1 + 1).to eq(2)
        end

        it 'just simple subtraction math' do 
            expect(5 - 3).to eq(2)
        end
    end
end