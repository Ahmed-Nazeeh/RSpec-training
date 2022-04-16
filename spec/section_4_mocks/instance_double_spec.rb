class Person 
    def a(sec)
        sleep(sec)
        "Hello"
    end
end

RSpec.describe Person do 
    describe 'regular double' do 
        it 'can implement any method' do 
            person = double(a: "Hello", b: 20) #this will pass with double even there is another b: 20 case wich is not existing in the method so can use instance_doulble better
            expect(person.a).to eq("Hello")
        end
    end

    describe 'instance double' do 
        it 'can only implement methods that are defined on the class' do 
            # person = instance_double(Person, a: "Hello", b: 20) #if checked here without write down the assertion method it will give error
        
            person = instance_double(Person)
            allow(person).to receive(:a).with(3).and_return("Hello")  #.with to give argument
            expect(person.a(3)).to eq("Hello")
        end
    end
end