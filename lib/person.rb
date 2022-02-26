# your code goes here
class Person
    attr_accessor :happiness, :hygiene, :bank_account
    attr_reader :name
    def initialize(name)
        @name = name
        @happiness = 8
        @hygiene = 8
        @bank_account= 25
    end

    def happiness
        [0,@happiness,10].sort[1]
    end

    def hygiene
        @hygiene.clamp(0,10)
    end

    def happy?
        @happiness > 7 ? true : false
    end

    def clean? 
        @hygiene > 7 ? true : false
    end
    def get_paid(amount)
        @bank_account += amount
        "all about the benjamins" 
    end
    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"

    end
    def work_out
        self.hygiene -=3
        self.happiness +=2
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
     def start_conversation(friend, topic)
        case topic
        when "politics"
            self.happiness -=2
            friend.happiness -=2
            "blah blah partisan blah lobbyist"
        when "weather"
            self.happiness +=1
            friend.happiness +=1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end     
     end
end
