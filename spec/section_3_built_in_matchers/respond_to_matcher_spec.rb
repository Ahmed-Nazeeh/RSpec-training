class HotChocolate
    def drink
        'Delicous'
    end

    def discard
        'PLOP!'
    end

    def purchase(number)
        "Awsome, Ijust purchsed #{number} mor hot chocolate bevrages!"
    end
end

class Coffe 
    def drink; end 
    def diecard; end 
    def purchase(number); end
end

RSpec.describe HotChocolate do 
    it 'confirms an object can respond to a method' do 
        expect(subject).to respond_to(:drink)
        expect(subject).to respond_to(:drink, :discard)
        expect(subject).to respond_to(:drink, :discard, :purchase)
    end

    it { is_expected.to respond_to(:purchase, :drink) }
    it { is_expected.to respond_to(:purchase).with(1).arguments }
end