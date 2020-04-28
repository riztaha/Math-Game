require "./player.rb"
require "./game.rb"
require "./question.rb"

# player = Player.new("P1")

puts "Player 1, please enter your name:"
player1 = Player.new(gets.chomp)
player1.greet

puts "Player 2, please enter your name:"
player2 = Player.new(gets.chomp)
player2.greet

game = Game.new(player1, player2)
game.run
