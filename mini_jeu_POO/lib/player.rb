require 'pry'

#Création de la classe Player
class Player 
  attr_accessor  :nom, :vie, :xy  #le xy c'est un string ou on va stocker le symbole pour la barre de vie
    
    @@all_players=[]
#Initializing the variables
    def initialize (nom,xy)
        @nom=nom
        @xy=xy
        @vie=10
        @@all_players << self
    end 

    def self.all
        @@all_players
      end

      def attacks (player)

        damage = compute_damage
        puts ">>> Le joueur #{self.nom} attaque le joueur #{player.nom}"
        puts ">>> Il lui inflige #{damage} points de dommages"
       player.gets_damage(damage)
      end

 
    def gets_damage(damage)
        @vie=@vie-damage
        if @vie <1 
            puts "Le joueur #{self.nom} a été tué:"
        else 
            return "Le joueur #{nom} a encore #{@vie} points de vie "
        end

    end
 

    def show_state
        
        x_y= @xy *@vie
        z=@vie        #Variable qui donne l'état de la vie
        print x_y     # ça va montrer le symbol comme une barre de vie équivalant au numéro de vie
        puts ("  #{z} points de vie pour #{nom}")
    end

    def compute_damage
        return rand(1..6)
      end
 
end

#Deuxièem classe dont on fait une héritage du Player (ligne 57)

class HumanPlayer < Player
attr_accessor :weapon_level 

def initialize (nom )
    @weapon_level =1 
    super(nom)
    @xy=xy
    @vie=100

end

def show_state
    super
    vh=@vie
    puts ("  #{vh} points de vie pour #{nom}")
    
end

def compute_damage
    rand(1..6) * @weapon_level
  end

def  search_weapon
    y2=rand(1..6)
    puts "Tu a trouvé une arme de niveau #{y2}"
    if @weapon_level<y 
      p  "Youhou ! elle est meilleure que ton arme actuelle : tu la prends."
        @weapon_level=y 
    else
      p "M@*#$... elle n'est pas mieux que ton arme actuelle..."
    end
end

def search_health_pack
    z2==rand(1..6)
    if z2==1
        puts "Tu n'as rien trouvé... "
    
    elsif z2>1 && z2<6
        puts "Bravo, tu as trouvé un pack de +50 points de vie !"
    if @vie<50  #On va stocker la valeur vie+50 si la vie est inf à 50 ou vie=100 si elle est supperieur
             @vie= @vie+50
        else 
         @vie=100
        end
        
    else   #On va stocker la valeur vie+80 si la vie est inf à 20 ou vie=100 si elle est supperieur
            puts "Waow, tu as trouvé un pack de +80 points de vie !"
        if @vie<20
             @vie= @vie+80
        else 
         @vie=100
            
        end
    end
end
end


