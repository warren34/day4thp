# half_pyramid

def half_pyramid
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"

    etage = Integer(gets.chomp)

    while (etage < 1 || etage > 25)
        puts "Veuillez rentrer un nombre entre 1 et 25"
        etage = Integer(gets.chomp)
    end

    i = 1
    etage_2 = etage
    while i <= etage
        puts (" " * etage_2)+("#" * i) 
        i += 1 
        etage_2 -= 1
    end
end

# full_pyramid

def full_pyramid
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"

    etage = Integer(gets.chomp)

    while (etage < 1 || etage > 25)
        puts "Veuillez rentrer un nombre entre 1 et 25"
        etage = Integer(gets.chomp)
    end

    i = 1
    etage_2 = etage
    while i <= etage
        if i%2 != 0
        puts (" " * (etage_2/2))+("#" * i) + (" " * (etage_2/2))
        end 
        i += 1 
        etage_2 -= 1
    end
end

# wtf_pyramid

def wtf_pyramid
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
    etage = gets.chomp.to_i
    while etage.even?
        puts "entre un nombre impair"
        etage = gets.chomp.to_i
    end
    i = etage
    a = 1
    while i <= etage
        puts ((" " * i) + ("#" * a))
        i = i - 1
        a = a + 2
        if a >= etage
            while i >= 1 && a>0
                puts ((" " * i) + ("#" * a))
                i = i + 1
                a = a - 2
            end
        end
    end
end

wtf_pyramid