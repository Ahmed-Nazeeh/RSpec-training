class ProfessionalWrestler
    attr_reader :name, :finishing_move

    def initialize(name, finishing_move)
        @name = name
        @finishing_move = finishing_move
    end
end

RSpec.describe 'have_attributes matcher' do 
    describe ProfessionalWrestler.new('Ahmed', 'Shameeh') do
        it 'checks for object attribute and proper values' do 
            expect(subject).to have_attributes(name: 'Ahmed')
            expect(subject).to have_attributes(name: 'Ahmed', finishing_move: 'Shameeh')
        end

        it { is_expected.to have_attributes(name: 'Ahmed') }
        it { is_expected.to have_attributes(name: 'Ahmed', finishing_move: 'Shameeh') }
    end
end
