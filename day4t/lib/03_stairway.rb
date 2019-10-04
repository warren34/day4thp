def move(real_position)
    dice = rand(1..6)
    puts "Le dé a le numéro #{dice}"

    if dice == 5 || dice == 6  
        puts "Tu montes d'une marche, tu es en position #{real_position + 1}"
        a = 1
    elsif dice == 1
        if real_position > 0
        puts "Tu recules d'une marche, tu es en position #{real_position - 1}"
        a = 2
        else
            puts "Tu restes en position 0, au point où tu en es..."
            a = 3
        end
    elsif dice == 2 || dice == 3 || dice == 4 
        puts "Rien ne se passe, tu restes en position #{real_position}"   
        a = 3
    end
    
    return a
end

def perform
    real_position = 0
    puts "Choisis de continuer  en appuyant sur 1 et abandonne avec 2 :"
    choice = gets.chomp.to_i
    while real_position < 10
        if choice == 1
            var_pos = move(real_position)
            if var_pos == 1 
                real_position += 1
            elsif var_pos == 2
                real_position -= 1
            elsif var_pos == 3
                real_position
            end
        puts "Choisis de continuer  en appuyant sur 1 et abandonne avec 2 :"
        choice = gets.chomp.to_i
        elsif choice == 2
            puts "Tu n'es qu'un miserable"
            break
        elsif choice != 1 || choice != 2
            puts "ON A DIT 1 POUR CONTINUER ET 2 POUR ABANDONNER"
            choice = gets.chomp.to_i
        end      
    end     
end

perform