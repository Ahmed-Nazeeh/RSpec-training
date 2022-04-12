RSpec.describe 'before and after hook' do 
    before(:context) do 
        puts 'before context'
    end

    after(:context) do 
        puts 'after context'
    end

    before(:example) do 
        puts '  before each example'
    end

    after(:example) do 
        puts '  after each example'
    end
    it 'just a random example' do 
        expect(4 * 5).to eq(20)
    end

    it 'just another example' do 
        expect(3 - 2).to eq(1)
    end
end