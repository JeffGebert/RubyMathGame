Class Player

attr_reader :name
attr_accessor :lives


def initialize(name)
    @name = name
    @lives = 3
end
def dead
    @lives = 0
end
def correct()
    puts "YES! you are correct"
end
def incorrect()
    puts




def attacks(ennemy)
    puts "#{@name} attacks #{ennemy.name}"
    damage_points = rand(@ap) + 1
    ennemy.takes_damage(damage_points)
  end
  
  def takes_damage(points)
    puts "Seriously? No!"
    @lives-= 1
  end