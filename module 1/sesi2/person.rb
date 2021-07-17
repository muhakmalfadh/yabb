class Person
    attr_reader :name, :attack_damage, :hitpoint


    def initialize(name, hitpoint, attack_damage)
        @name = name
        @hitpoint = hitpoint
        @attack_damage = attack_damage
    end

    def to_s
        "#{@name} has #{@hitpoint} hitpoint and #{@attack_damage} attack damage.\n\n"
    end

    def attack(other_person)
        puts "#{@name} attacks #{other_person.name} with #{@attack_damage} damage."
        other_person.take_damage(@attack_damage)
    end

    def take_damage(damage)
        @hitpoint -= damage
    end

    def died?
        if @hitpoint <= 0
            puts "#{@name} dies."
            true
        end
    end
end

class Hero < Person
    def initialize(name, hitpoint, attack_damage)
        super(name, hitpoint, attack_damage)
        @deflect_percentage = 0.8
    end

    def take_damage(damage)
        if rand < @deflect_percentage
            puts "#{@name} deflects the attack"
        else
            @hitpoint -= damage
        end
    end
end