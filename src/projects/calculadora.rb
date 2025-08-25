    loop do
    puts("Conversor de base")
    puts("Escolha a base:")
    puts("1-decimal")
    puts("2-hexadecimal")
    puts("3-binário")
    puts("4-octal")
    puts("5-terciário")
    puts("6-outra")
    puts("7-sair")
    escolha= gets.chomp.to_i
    
    case escolha
        when 1
            puts("Selecione a base que deseja converter:")
            puts("> 1-hexadecimal")
            puts("> 2-binário")
            puts("> 3-octal")
            puts("> 4-terciário")
            puts("> 5-outro")
            base= gets.chomp 
            if base =="1" 
                    puts("Digite o numero em decimal:")
                    n1= gets.chomp.to_i
                    resultado= n1.to_s(16)
                    puts("O número #{n1} na base #{base} é igual a:#{resultado}")
            elsif base =="2"
                puts("Digite o numero em decimal:")
                n1= gets.chomp.to_i
                resultado= n1.to_s(2)
                puts("O número #{n1} na base #{base} é igual a:#{resultado}")
            elsif base =="3"
                puts("Digite o numero em decimal:")
                n1= gets.chomp.to_i
                resultado= n1.to_s(8)
                puts("O número #{n1} na base #{base} é igual a:#{resultado}")
            elsif base =="4"
                puts("Digite o numero em decimal:")
                n1= gets.chomp.to_i
                resultado= n1.to_s(3)
                puts("O número #{n1} na base #{base} é igual a:#{resultado}")
            elsif base =="5"
                puts("Digite o numero em decimal:")
                n1= gets.chomp.to_i
                puts("Digite a base:")
                base_outro = gets.chomp.to_i
                resultado= n1.to_s(base_outro)
                puts("O número #{n1} n base #{base} é igual a:#{resultado}")
            else
                puts("Operação inválida")

            end
        end
    case escolha
        when 2
            puts("Selecione a base que deseja converter:")
            puts("> 1-decimal")
            puts("> 2-binário")
            puts("> 3-octal")
            puts("> 4-terciário")
            puts("> 5-outro")
            base= gets.chomp.to_i
            if base =="1" 
                    puts("Digite o numero em hexadecimal:")
                    n1= gets.chomp.to_i
                    resultado= n1.to_s(10)
                    puts("O número #{n1} na base #{base} é igual a:#{resultado}")
            elsif base =="2"
                puts("Digite o numero em hexadecimal:")
                n1= gets.chomp.to_i
                resultado= n1.to_s(2)
                puts("O número #{n1} na base #{base} é igual a:#{resultado}")
            elsif base =="3"
                puts("Digite o numero em hexadecimal:")
                n1= gets.chomp.to_i
                resultado= n1.to_s(8)
                puts("O número #{n1} na base #{base} é igual a:#{resultado}")
            elsif base =="4"
                puts("Digite o numero em hexadecimal:")
                n1= gets.chomp.to_i
                resultado= n1.to_s(3)
                puts("O número #{n1} na base #{base} é igual a:#{resultado}")
            elsif base =="5"
                puts("Digite o numero em hexadecimal:")
                n1= gets.chomp.to_i
                puts("Digite a base:")
                base_outro = gets.chomp.to_i
                resultado= n1.to_s(base_outro)
                puts("O número #{n1} n base #{base} é igual a:#{resultado}")
            else
                puts("Operação inválida")

            end
        end
    case escolha
        when 3
            puts("Selecione a base que deseja converter:")
            puts("> 1-decimal")
            puts("> 2-hexadecimal")
            puts("> 3-octal")
            puts("> 4-terciário")
            puts("> 5-outro")
            base= gets.chomp.to_i
            if base =="1" 
                    puts("Digite o numero em binário:")
                    n1= gets.chomp.to_i
                    resultado= n1.to_s(10)
                    puts("O número #{n1} na base #{base} é igual a:#{resultado}")
            elsif base =="2"
                puts("Digite o numero em binário:")
                n1= gets.chomp.to_i
                resultado= n1.to_s(16)
                puts("O número #{n1} na base #{base} é igual a:#{resultado}")
            elsif base =="3"
                puts("Digite o numero em binário:")
                n1= gets.chomp.to_i
                resultado= n1.to_s(8)
                puts("O número #{n1} na base #{base} é igual a:#{resultado}")
            elsif base =="4"
                puts("Digite o numero em binário:")
                n1= gets.chomp.to_i
                resultado= n1.to_s(3)
                puts("O número #{n1} na base #{base} é igual a:#{resultado}")
            elsif base =="5"
                puts("Digite o numero em binário:")
                n1= gets.chomp.to_i
                puts("Digite a base:")
                base_outro = gets.chomp.to_i
                resultado= n1.to_s(base_outro)
                puts("O número #{n1} n base #{base} é igual a:#{resultado}")
            else
                puts("Operação inválida")

            end
        end
    case escolha
        when 4
            puts("Selecione a base que deseja converter:")
            puts("> 1-decimal")
            puts("> 2-hexadecimal")
            puts("> 3-binário")
            puts("> 4-terciário")
            puts("> 5-outro")
            base= gets.chomp.to_i
            if base =="1" 
                    puts("Digite o numero em octal:")
                    n1= gets.chomp.to_i
                    resultado= n1.to_s(10)
                    puts("O número #{n1} na base #{base} é igual a:#{resultado}")
            elsif base =="2"
                puts("Digite o numero em octal:")
                n1= gets.chomp.to_i
                resultado= n1.to_s(16)
                puts("O número #{n1} na base #{base} é igual a:#{resultado}")
            elsif base =="3"
                puts("Digite o numero em octal:")
                n1= gets.chomp.to_i
                resultado= n1.to_s(2)
                puts("O número #{n1} na base #{base} é igual a:#{resultado}")
            elsif base =="4"
                puts("Digite o numero em octal:")
                n1= gets.chomp.to_i
                resultado= n1.to_s(3)
                puts("O número #{n1} na base #{base} é igual a:#{resultado}")
            elsif base =="5"
                puts("Digite o numero em octal:")
                n1= gets.chomp.to_i
                puts("Digite a base:")
                base_outro = gets.chomp.to_i
                resultado= n1.to_s(base_outro)
                puts("O número #{n1} n base #{base} é igual a:#{resultado}")
            else
                puts("Operação inválida")

            end
        end
    case escolha
        when 5
            puts("digite a base:")
            base_outro2 = gets.chomp.to_i
            puts("Selecione a base que deseja converter:")
            puts("> 1-decimal")
            puts("> 2-hexadecimal")
            puts("> 3-octal")
            puts("> 4-terciário")
            puts("> 5-outro")
            base= gets.chomp.to_i
            if base =="1" 
                    puts("Digite o numero:")
                    n1= gets.chomp.to_i
                    resultado= n1.to_s(10)
                    puts("O número #{n1} na base #{base} é igual a:#{resultado}")
            elsif base =="2"
                puts("Digite o numero:")
                n1= gets.chomp.to_i
                resultado= n1.to_s(16)
                puts("O número #{n1} na base #{base} é igual a:#{resultado}")
            elsif base =="3"
                puts("Digite o numero:")
                n1= gets.chomp.to_i
                resultado= n1.to_s(8)
                puts("O número #{n1} na base #{base} é igual a:#{resultado}")
            elsif base =="4"
                puts("Digite o numero:")
                n1= gets.chomp.to_i
                resultado= n1.to_s(3)
                puts("O número #{n1} na base #{base} é igual a:#{resultado}")
            elsif base =="5"
                puts("Digite o numero:")
                n1= gets.chomp.to_i
                puts("Digite a base:")
                base_outro = gets.chomp.to_i
                resultado= n1/to_s(base_outro)
                puts("O número #{n1} n base #{base_outro} é igual a:#{resultado}")
            else
                puts("Operação inválida")

            end
        end
        case escolha
        when 7
            break
        end
    end





        







        







        

