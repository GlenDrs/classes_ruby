require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

player1=Player.new("Josiane.X","X")
player2=Player.new("Jose.Y","Y")

    puts "Commencons le jeux: "
    puts "En premiere c'est  #{player1.nom} qui va attaquer  #{player2.nom} après  #{player2.nom} va attaquer au retour #{player1.nom}
    jusque à que un jouer perds tous ses points"
puts ("\n \n \n ")    
 

        while player1.vie > 0 && player2.vie > 0

            puts "Passons à la phase d'attaque : "
            puts player1.show_state
            puts player2.show_state
            puts ("\n \n ")    

            player1.attacks (player2)
            if player1.vie < 1
                break
              end
            player2.attacks (player1)
            if player2.vie < 1
                break
              end
        end
        


binding.pry


