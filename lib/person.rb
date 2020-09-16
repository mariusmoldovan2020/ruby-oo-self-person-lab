# your code goes here
require 'pry'
class Person
    attr_reader :name
    attr_accessor :bank_account 
    attr_writer :happiness, :hygiene
    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account 
        @happiness = happiness
        @hygiene = hygiene
    end


    def happiness
        if @happiness > 10
            @happiness = 10
        elsif @happiness < 0
            @happiness = 0
        else
            @happiness
        end
    end
    def hygiene
        if @hygiene > 10
            @hygiene = 10
        elsif @hygiene < 0
            @hygiene = 0
        else
            @hygiene
        end
        @hygiene
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
    def get_paid(salary)
        @salary = salary
        @bank_account += @salary
        p "all about the benjamins"
    end

    def take_bath
        # binding.pry
        self.hygiene += 4
        p "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out
        # binding.pry
        self.happiness += 2
        self.hygiene -= 3
        p "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"   
    end

    def start_conversation(person, topic)
        if topic == "politics"
            self.happiness -= 2
            person.happiness -= 2
            p "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness +=1
            person.happiness +=1
            p "blah blah sun blah rain"
        else
            self.happiness
            person.happiness
            p "blah blah blah blah blah"
        end
    end
    
end

# jack = Person.new("jack")
# jack.happiness = 4
# puts jack.happy?