RSpec.describe 'change matcher' do 
    subject { [1,2,3] }

    it 'checks htat a method changes object state' do 
        expect { subject.push(4) }.to change { subject.length }.from(3).to(4) #but notice here is is very specified and if we changed the original array to 4 itmes it does not work so it is needed to use "by"
        expect { subject.push(4) }.to change { subject.length }.by(1)
    end

    it  'accepts negative values' do 
        expect { subject.pop }.to change { subject.length }.from(3).to(2)
        expect { subject.pop }.to change { subject.length }.by(-1)
    end

end