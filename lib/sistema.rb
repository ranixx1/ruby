saldo = 0.0  # Variável para armazenar o saldo da conta
senha_cadastrada = nil

loop do
  puts "\nEscolha uma das opções abaixo:"
  puts "1 - Criar Conta"
  puts "2 - Sacar"
  puts "3 - Depositar"
  puts "4 - Consultar saldo"
  puts "5 - Sair"
  x = gets.chomp.to_i

  case x
  when 1  # Criar Conta
    puts "Nome completo:"
    nome = gets.chomp
    puts "Telefone:"
    telefone = gets.chomp
    puts "Email:"
    email = gets.chomp
    puts "Gênero:"
    puts "1 - Masculino"
    puts "2 - Feminino"
    puts "3 - Prefiro não responder"
    genero_e = gets.chomp.to_i

    if genero_e == 1
      puts "Olá senhor, estamos quase finalizando seu cadastro, como podemos te chamar?"
      nome_chm = gets.chomp
      puts "Bem-vindo, #{nome_chm}"
    elsif genero_e == 2
      puts "Olá senhora, estamos quase finalizando seu cadastro, como podemos te chamar?"
      nome_chf = gets.chomp
      puts "Bem-vinda, #{nome_chf}"
    elsif genero_e == 3
      puts "Olá, estamos quase finalizando seu cadastro, como podemos te chamar?"
      nome_chc = gets.chomp
      puts "Bem-vindo(a), #{nome_chc}"
    else
      puts "Cadastro finalizado!"
    end

    # Criar senha
    puts "Crie uma senha para sua conta:"
    senha_cadastrada = gets.chomp
    puts "Senha cadastrada com sucesso!"

  when 2 # Sacar
    if senha_cadastrada.nil?
      puts "Você precisa criar uma conta antes de sacar!"
      next # Volta ao início do loop, sem executar o código abaixo
    end

    puts "Saldo atual: R$ #{saldo}"
    puts "Digite o valor que deseja sacar:"
    valor_saque = gets.chomp.to_f

    if valor_saque > saldo
      puts "Saldo insuficiente!"
    else
      tentativas = 3
      while tentativas > 0
        puts "Digite sua senha para confirmar o saque:"
        senha_digitada = gets.chomp
        if senha_digitada == senha_cadastrada
          saldo -= valor_saque
          puts "Saque de R$ #{valor_saque} realizado com sucesso!"
          puts "Saldo atual: R$ #{saldo}"
          break
        else
          tentativas -= 1
          puts "Senha incorreta! Você tem mais #{tentativas} tentativas." if tentativas > 0
          puts "Tentativas esgotadas! Retornando ao menu." if tentativas == 0
        end
      end
    end

  when 3 # Depositar
    if senha_cadastrada.nil?
      puts "Você precisa criar uma conta antes de depositar!"
      next
    end

    loop do
      puts "Digite o valor a ser depositado:"
      valor_deposito = gets.chomp.to_f

      puts "1 - Confirmar depósito"
      puts "2 - Alterar valor"
      puts "3 - Cancelar depósito"
      opcao = gets.chomp.to_i

      case opcao
      when 1
        tentativas = 3
        while tentativas > 0
          puts "Digite sua senha para confirmar o depósito:"
          senha_digitada = gets.chomp
          if senha_digitada == senha_cadastrada
            saldo += valor_deposito
            puts "Depósito de R$ #{valor_deposito} realizado com sucesso!"
            break
          else
            tentativas -= 1
            puts "Senha incorreta! Você tem mais #{tentativas} tentativas." if tentativas > 0
            puts "Tentativas esgotadas! Retornando ao menu." if tentativas == 0
          end
        end
        break

      when 2
        puts "Digite o novo valor a ser depositado:"
        valor_deposito = gets.chomp.to_f

      when 3
        puts "Depósito cancelado."
        break

      else
        puts "Opção inválida, tente novamente."
      end
    end

  when 4 # Consultar saldo
    if senha_cadastrada.nil?
      puts "Você precisa criar uma conta antes de consultar o saldo!"
      next
    end

    puts "Seu saldo atual é de R$ #{saldo}"

  when 5 # Sair do sistema
    puts "Saindo do sistema..."
    break

  else
    puts "Opção inválida, tente novamente."
  end
end
