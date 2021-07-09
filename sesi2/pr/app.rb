require_relative 'person'
require_relative 'mongol'
require_relative 'villain'

jin = Hero.new("Jin Sakai", 100, 50)
yuna = Hero.new("Yuna", 90, 45)
ishikawa = Hero.new("Sensei Ishikawa", 80, 60)
mongol_archer = MongolArcher.new("Mongol Archer", 80, 40)
mongol_spearman = MongolSpearman.new("Mongol Spearman", 120, 60)
mongol_swordsman = MongolSwordsman.new("Mongol Swordsman", 100, 50)
allies = [yuna, ishikawa]
villains = [mongol_archer, mongol_spearman, mongol_swordsman]

i = 1
until (jin.died? || villains.empty?) do
    puts "========== Turn #{i} =========="
    puts "\n"

    #inisiasi
    allies.each do |ally|
        puts ally
    end
    villains.each do |villain|
        puts villain
    end
    puts "\n"

    #combat
    allies.each do |ally|
        ally.attack(villains[rand(villains.size)])
        allies.delete(ally) if ally.died?
    end
    puts "\n"
    villains.each do |villain|
        villains.delete(villain) if villain.died? || villain.flee?
    end
    puts "\n"

    villains.each do |villain|
        villain.attack(jin)
    end
    puts "\n"

    i += 1
end

if villains.empty?
    puts "Heroes Win!"
else
    puts "Villains Win!"
end