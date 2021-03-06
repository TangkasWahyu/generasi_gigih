class Warrior
    attr_reader :name, :is_fleed

    def initialize(name, attack_damage, hitpoints)
        @name = name
        @hitpoints = hitpoints
        @attack_damage = attack_damage
    end

    def to_s
        "#{@name} has #{@hitpoints} hitpoints and #{@attack_damage} attack damage"
    end

    def is_alive?
        @hitpoints > 0
    end

    def attack(other_warrior)
        puts "#{@name} attacks #{other_warrior.name} with #{@attack_damage}"
        other_warrior.attacked(@attack_damage)
    end

    def attacked(attack_damage)
        @hitpoints -= attack_damage
    end

    def healed(healing_points)
        @hitpoints += healing_points
    end
end
