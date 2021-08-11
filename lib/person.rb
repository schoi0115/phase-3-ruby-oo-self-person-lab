require "pry"

class Person
    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(num)
        @happiness = if num > 10
            10
        elsif num < 0
            0
        else
            num
        end
    end

    def hygiene=(num)
        @hygiene = if num > 10
            10
        elsif num < 0
            0
        else
            num
        end
    end

    def happy?
        if self.happiness > 7
            true
        else
            false
        end
    end

    def clean?
        if self.hygiene > 7
            true
        else 
            false
        end
    end

    def get_paid(amount)
        self.bank_account += amount
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        if self.hygiene > 10
            10     
        end
        return "♪ Rub-a-dub just relaxing in the tub ♫"   
    end
    
    def work_out
        self.hygiene -= 3
        self.happiness +=2
        if self.happiness > 10
            10
    end
    return "♪ another one bites the dust ♫"
end

    def call_friend(argument)
        self.happiness += 3
        argument.happiness += 3
        "Hi #{argument.name}! It's #{self.name}. How are you?"
     end

     def start_conversation(arg1, arg2)
        case 
        when arg2 == "politics"
          [self, arg1].each { |person| person.happiness -= 2 }
          "blah blah partisan blah lobbyist"
        when arg2 == "weather"
          [self, arg1].each { |person| person.happiness += 1 }
          "blah blah sun blah rain"
        else
          "blah blah blah blah blah"
        end
      end

end


