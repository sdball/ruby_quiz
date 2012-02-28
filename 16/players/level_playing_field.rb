class LevelPlayingField < Player
  def initialize(opponent)
    # rewrite class_eval to remove that strategy from the cheater
    Module.class_eval('def class_eval(obj) end')
  end
  def choose
    [:rock, :paper, :scissors].shuffle.first
  end
end
