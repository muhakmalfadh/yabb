require_relative 'person'

player1 = Person.new("Jin Sakai", 100, 50)
puts player1

player2 = Person.new("Khotun Khan", 500, 50)
puts player2

loop do
    player1.attack(player2)
    puts player2
    player2.attack(player1)
    puts player1
    if player1.died? || player2.died?
        break
    end
end