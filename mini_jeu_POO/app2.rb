require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'


p"  -------------------------------------------------"
p"  |Bienvenue sur 'ILS VEULENT TOUS MA POO' !      |
    |Le but du jeu est d'être le dernier survivant !|
    -------------------------------------------------"
    @player1
    @player2
    @human
    @enemies = []

    def human_nom_symb
        puts "Le nom et le symbol de l'humain!"
        print ">"
        print ">"
        return @human = HumanPlayer.new(gets.chomp, gets.chomp)
      end

    @player1 = Player.new("Josiane.X","X")
    @player2 = Player.new("José.Y","Y")
    @enemies << @player1
    @enemies << @player2




binding.pry
