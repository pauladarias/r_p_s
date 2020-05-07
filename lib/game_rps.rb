require_relative 'robot'

class Game

  attr_reader :player_name, :player_button, :robot
  
  def initialize(player_name, player_button, robot = Robot.new)
    @player_name = player_name 
    @player_button = button
    @robot = robot
  end 

  def round(player_button, robot)
    case [player_button, robot]
    when ["rock", "rock"], ["scissors", "paper"], ["rock", "scissors"]
      puts "You won #{@player_name}"
    when ["rock", "rock"], ["scissors", "scissors"], ["paper", "paper"]
      puts "You tied"
    else
      puts "You lost #{@player_name}"
    end 
  end  

end 