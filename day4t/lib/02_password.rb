def signup
    puts "veuillez entrer votre mot de passe"
    print"> "
    psw = gets.chomp.to_i
    return psw
end

def login(psw)
    puts "confirmer votre mot de passe"
    psw_u = gets.chomp.to_i
    while psw_u != psw
        puts "mot de passe erronee veuillez reesayer"
        psw_u = gets.chomp.to_i
    end
    return psw_u
end

def welcome_screen(psw_u,psw)
    if psw_u == psw
        puts "you are welcome futur corsair now you are in the link"    
    end
end

def perform

    psw = signup

    psw_u = login(psw)
    
    welcome_screen(psw_u,psw)
end

perform
