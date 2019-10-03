def signup
    puts "Définis un mot de passe"
    mdp = gets.chomp.to_i
    return mdp
end

def login(mdp)
    puts "Rentre ton mot de passe"
    mdp_u = gets.chomp.to_i
    while mdp_u != mdp
        puts "Ce n'est pas le bon mot de passe chenapan"
        mdp_u = gets.chomp.to_i
    end
    return mdp_u
end

def welcome_screen(mdp_u,mdp)
    if mdp_u == mdp
        puts "Bienvenue my friend"    
    end
end

def perform

    mdp = signup

    mdp_u = login(mdp)
    
    welcome_screen(mdp_u,mdp)
end

perform