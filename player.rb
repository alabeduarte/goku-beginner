class Player
  def play_turn(warrior)
    warrior.walk! if warrior.feel.empty?
  end
end
