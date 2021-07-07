# your code goes here
# your code goes here
require 'pry'
class Person 
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize (name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
    
    def happiness=(number)
        if number < 0 
            @happiness = 0
        elsif number > 10
            @happiness = 10
        else
            @happiness = number
        end
    end

    def hygiene=(number)
        if number < 0 
            @hygiene = 0
        elsif number > 10
            @hygiene = 10
        else
            @hygiene = number
        end
    end

    def happy?
        if @happiness > 7
            return true
        end
            return false
    end

    def clean?
        if @hygiene > 7
            return true
        end
            return false
    end

    def get_paid(salary)
        @bank_account += salary
        return 'all about the benjamins'
    end

    def take_bath 
        self.hygiene += 4 
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        return "Hi #{friend.name}! It's #{name}. How are you?"
    end

    def start_conversation(name, topic)
        
        if topic == "politics"
            self.happiness -= 2
            name.happiness -= 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            name.happiness += 1
            return "blah blah sun blah rain"
        else 
            "blah blah blah blah blah"
        end
    end
    
end