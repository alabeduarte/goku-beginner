class Player
  def play_turn(warrior)
      if check_health(warrior) && warrior.feel.empty?
          warrior.rest!
      else
        unless warrior.feel.empty?
          warrior.attack!
        else
          warrior.walk!
        end
      end
  end
    
  def check_health(warrior)
        warrior.health < 20
  end
end
