# class Card 
#     attr_reader :type

#     def initialize(type)
#         @type = type 
#     end
# end

# RSpec.describe 'Crad' do 
#     it 'has a type' do
#         #specify 'has a type' do   #>>>>>> specifty is another way to write it.
#         #end
#         card = Card.new('Ace of Spades')
#         expect(card.type).to eq('Ace of Spades')   #>>>> we expect card with type attribute equal to 'Ace of Spades'
#         #expect(1 + 1).to eq(2)
#     end
# end
# ---------------------------------------------------------------------------------------------------------

# class Card 
#     attr_reader :rank, :suit

#     def initialize(rank, suit)
#         @rank = rank
#         @suit = suit
        
#     end

# end

# RSpec.describe Card do 
#     it 'has rank and suit' do
#         card = Card.new('Ace', 'Spades')
#         expect(card.rank).to eq('Ace')
#     end
#     it 'has rank and suit' do
#         card = Card.new('Ace', 'Spades')
#         expect(card.suit).to eq('Spades')
#     end
# end
# ---------------------------------------------------------------------------------------------------------
# reducing duplication using before hook instance var

# class Card 
#     attr_reader :rank, :suit

#     def initialize(rank, suit)
#         @rank = rank
#         @suit = suit
        
#     end

# end

# RSpec.describe Card do 
#     before do 
#         @card = Card.new('Ace', 'Spades')
#     end

#     it 'has rank and suit' do
#         expect(@card.rank).to eq('Ace')
#     end
#     it 'has rank and suit' do
#         expect(@card.suit).to eq('Spades')
#     end
# end
# --------------------------------------------------------------------
# Removing duplication using helper method


# class Card 
#     attr_reader :rank, :suit

#     def initialize(rank, suit)
#         @rank = rank
#         @suit = suit
        
#     end

# end

# RSpec.describe Card do 
#     def card  
#         card = Card.new('Ace', 'Spades')
#     end

#     it 'has rank and suit' do
#         expect(card.rank).to eq('Ace')
#     end
#     it 'has rank and suit' do
#         expect(card.suit).to eq('Spades')
#     end
# end
# -------------------------------------------------------------------------------
# but using method is limited and can make problems

# class Card 
#     attr_accessor :rank, :suit

#     def initialize(rank, suit)
#         @rank = rank
#         @suit = suit
        
#     end

# end

# RSpec.describe Card do 
#     def card  
#         card = Card.new('Ace', 'Spades')
#     end

#     it 'has rank and that rank can change' do
#         expect(card.rank).to eq('Ace')
#         card.rank = 'Queen'
#         expect(card.rank).to eq('Queen')
#     end
#     it 'has rank and suit' do
#         expect(card.suit).to eq('Spades')
#     end
# end
# --------------------------------------------------------------------------------------
# Reducing duplication using LET method

class Card 
    attr_accessor :rank, :suit

    def initialize(rank, suit)
        @rank = rank
        @suit = suit
        
    end

end

RSpec.describe Card do 
    let(:card) {Card.new('Ace', 'Spades')} # 'Memoization' called too #using 'lazy loading'  it will not generate the card as a variable until it has been called form examples, and every time it will generate new card.
    #let!(:card) {Card.new('Ace', 'Spades')}  #At this case it will assign variable with name card and save it using ! sign.

    it 'has rank and that rank can change' do
        expect(card.rank).to eq('Ace')
        card.rank = 'Queen'
        expect(card.rank).to eq('Queen')
    end
    it 'has rank and suit' do
        expect(card.suit).to eq('Spades')
    end
end
# ----------------------------------------------------------------------------------------------------
# custom error messages

class Card 
    attr_accessor :rank, :suit

    def initialize(rank, suit)
        @rank = rank
        @suit = suit
        
    end

end

RSpec.describe Card do 
    
     let(:card) {Card.new('Ace', 'Spades')}
    

    it 'has rank and that rank can change' do
        expect(card.rank).to eq('Ace')
        card.rank = 'Queen'
        expect(card.rank).to eq('Queen')
    end
    it 'has rank and suit' do
        expect(card.suit).to eq('Spades')
    end

    it 'has custom error message' do
        card.suit = "Nonsense"
        comparison = "Spades"
        expect(card.suit).to eq(comparison), "Hey, I expect #{comparison}, but I got #{card.suit}"
    end
end