# Questions for this assignment
# Create a double with the name "Database Connection". 
RSpec.describe 'a random double' do 
    it 'only allow defined methods to be invoked' do
# The double should have a method called connect that returns the value true.   
# The double also have a method called disconnect that returns the value "Goodbye".       
# The double's methods should be assigned in the initial invocation of the double method.
        db = double("Database Connection", connect: true, disconnect: 'Goodbye')
# Write two expectations, one for connect and one for disconnect, that confirms the return value of each.
        expect(db.connect).to eq(true)
        expect(db.disconnect).to eq('Goodbye')
# Assign the double to the variable db.

# Create a double with the name "File System". Assign the double to the variable fs.
        fs = double("File System")
# Using the allow method, give the double a read method that returns the value "Romeo and Juliet".
        allow(fs).to receive(:read).and_return("Romeo and Juliet")
        expect(fs.read).to eq("Romeo and Juliet")
# Using the allow method, give the double a write method that returns the value false.
        allow(fs).to receive(:write).and_return(false)
        expect(fs.write).to eq(false)
    end
end