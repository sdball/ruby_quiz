class Reactive < Player
  MOVE_THAT_BEATS = {
    rock: :paper,
    paper: :scissors,
    scissors: :rock
  }

  def choose
    @my_move || :paper
  end

  def result(my_move, opponent_move, outcome)
    @my_move = MOVE_THAT_BEATS[opponent_move]
  end

end
