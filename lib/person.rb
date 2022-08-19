# your code goes here
require "pry"

class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize name, bank_account = 25, happiness = 8, hygiene = 8
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def happiness=(value)
        if value > 10
            value = 10
        elsif value < 0
            value = 0
        end
        @happiness = value
    end

    def hygiene=(value)
        if value > 10
            value = 10
        elsif value < 0
            value = 0
        end
        @hygiene = value
    end

    def clean?
        if @hygiene > 7
            true
        else false
        end
    end

    def happy?
        if @happiness > 7
            true
        else false
        end
    end

    def get_paid amount
        @bank_account += amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend friend
        Person.new(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{name}. How are you?"
    end

    def start_conversation friend, topic
        if topic == "politics"
            self.happiness -= 2
            friend.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            friend.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end

end