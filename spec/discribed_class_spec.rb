class King
attr_reader :name
def initialize(name)
    @name = name
end
end

RSpec.describe King do 
    subject { described_class.new('boris') }
    let(:nazeeh) { described_class.new('jordan') }

    it 'Represent a great person' do 
        expect(subject.name).to eq('boris')
        expect(nazeeh.name).to eq('jordan')
    end

end