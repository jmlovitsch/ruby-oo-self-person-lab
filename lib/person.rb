class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
        def happiness
            if @happiness > 10
                return @happiness = 10
            end
            if @happiness < 0
                return @happiness = 0
            end
            @happiness
        end
        def hygiene
            if @hygiene > 10
                return @hygiene = 10
            end
            if @hygiene < 0
                return @hygiene = 0
            end
            @hygiene
        end
        def happy?
            @happiness > 7
        end
        def clean?
            @hygiene > 7
        end
        def get_paid(salary)
            @bank_account += salary
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
        def call_friend(instance)
            self.happiness += 3
            instance.happiness += 3
            "Hi #{instance.name}! It's #{self.name}. How are you?"
        end
        def start_conversation(person,topic)
            if topic == "politics"
                self.happiness -= 2
                person.happiness -= 2
                "blah blah partisan blah lobbyist"
            elsif topic == "weather"
                self.happiness += 1
                person.happiness += 1
                "blah blah sun blah rain"
            else
                "blah blah blah blah blah"
            end
        end
end
