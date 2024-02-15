defmodule Rules do
  def eat_ghost?(power_pellet_active?, touching_ghost?), do: power_pellet_active? and touching_ghost?

  def score?(touching_power_pellet?, touching_dot?), do: touching_power_pellet? or touching_dot?
    

  def lose?(power_pellet_active?, touching_ghost?) do
    # Please implement the lose?/2 function
    not power_pellet_active? and  touching_ghost?
  end

  def win?(has_eaten_all_dots?, power_pellet_active?, touching_ghost?) do
    # Please implement the win?/3 function
    has_eaten_all_dots? and not lose?(power_pellet_active?, touching_ghost?)
  end
end
