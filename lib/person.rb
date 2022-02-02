# your code goes here
require 'pry'
class Person
    attr_reader :name
    attr_accessor :bank_account
    attr_reader :happiness
    attr_accessor :hygiene
    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

   

    def happiness=(value)
        if value <= 10 && value >= 0
            @happiness = value
        elsif value > 10
            @happiness = 10
        else
            @happiness = 0
        end
    end

    def hygiene=(value)
        if value <= 10 && value >= 0
            @hygiene = value
        elsif value > 10
            @hygiene = 10
        else
            @hygiene = 0
        end
    end

    def happy?
        if @happiness > 7
            true
        else
            false
        end
    end

    def clean?
        if @hygiene > 7
            true
        else 
            false
        end
    
    end

    def get_paid(value)
        @bank_account += value
         "all about the benjamins"
    end

    def take_bath
       current_hygiene = @hygiene += 4
        self.hygiene=(current_hygiene)
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    
    def work_out 
       current_hygiene = @hygiene -= 3
       current_happiness = @happiness +=2
        self.hygiene=(current_hygiene)
        self.happiness=(current_happiness)
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        current_happiness = @happiness += 3
        
        friend_happyiness = friend.happiness + 3

        self.happiness=(current_happiness)
        friend.happiness=(friend_happyiness)

        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        case topic

        when "politics"
            
            
           
            self.happiness -= 2
            person.happiness -= 2
            "blah blah partisan blah lobbyist"
        when "weather"

        

            self.happiness += 1
            person.happiness += 1

            "blah blah sun blah rain"

        else 
            "blah blah blah blah blah"
        end
    end

binding.pry




end

p1 = Person.new("sam")