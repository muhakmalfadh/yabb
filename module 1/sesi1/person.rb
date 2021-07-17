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
        if (other_person.name == "Jin Sakai") and (rand() > 0.8)
            other_person.take_damage(@attack_damage)
        elsif other_person.name == "Khotun Khan"
            other_person.take_damage(@attack_damage)
        else
            puts "Jin Sakai deflects the attack"
        end
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