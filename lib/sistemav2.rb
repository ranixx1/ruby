require 'json'

# Caminho do arquivo onde os dados serão armazenados
ARQUIVO_DADOS = "usuarios.json"  #Define uma constante

# Função para carregar os dados do arquivo
def carregar_dados
  if File.exist?(ARQUIVO_DADOS) #Verifica se o arquivo existe
    JSON.parse(File.read(ARQUIVO_DADOS), symbolize_names: true) #Se o arquivo existir, lê e converte de JSON para um array de hashes
  else #Se o arquivo não existir, retorna um array vazio
    []
  end
end

# Função para salvar os dados no arquivo
def salvar_dados(dados)
  File.write(ARQUIVO_DADOS, JSON.pretty_generate(dados)) #JSON.pretty_generate(dados) gera um JSON bem formatado para melhor visualização no arquivo.
end

# Função para encontrar usuário pelo e-mail
def encontrar_usuario(email, usuarios) #Recebe dois parâmetros: email e usuarios
  usuarios.find { |u| u[:email] == email } # O .find percorre cada elemento do array usuarios
end            #O |u| representa cada usuário individualmente.

# Carregar usuários salvos
usuarios = carregar_dados
usuario_logado = nil

puts "Bem-vindo ao sistema bancário!"

# Processo de login ou criação de conta
loop do
  puts "\n1 - Fazer Login"
  puts "2 - Criar Conta"
  puts "3 - Sair"
  escolha = gets.chomp.to_i

  case escolha
  when 1 # Login
    puts "Digite seu e-mail:"
    email = gets.chomp.downcase #downcase é uma função que converte todas as letras maiúsculas de uma string para minúsculas
    puts "Digite sua senha:"
    senha = gets.chomp

    usuario = encontrar_usuario(email, usuarios)

    if usuario && usuario[:senha] == senha #garante que o usuário existe e que a senha está correta antes de logá-lo.
      usuario_logado = usuario
      puts "Login bem-sucedido! Bem-vindo, #{usuario[:nome]}!"
      break
    else
      puts "E-mail ou senha incorretos!"
    end

  when 2 # Criar conta
    puts "Nome completo:"
    nome = gets.chomp
    puts "Telefone:"
    telefone = gets.chomp
    puts "Email:"
    email = gets.chomp.downcase

    # Verifica se o e-mail já existe
    if encontrar_usuario(email, usuarios)
      puts "Este e-mail já está cadastrado! Tente fazer login."
      next
    end

    puts "Gênero:"
    puts "1 - Masculino"
    puts "2 - Feminino"
    puts "3 - Prefiro não responder"
    genero_e = gets.chomp.to_i
    genero = case genero_e
             when 1 then "Masculino" # when 1 then = Se genero_e for 1, a variável genero recebe "Masculino".          
             when 2 then "Feminino" # when 2 then = Se genero_e for 2, recebe "Feminino"
             else "Prefiro não responder"
             end

    puts "Crie uma senha:"
    senha = gets.chomp

    # Criar novo usuário
    novo_usuario = {
      nome: nome,
      telefone: telefone,
      email: email,
      genero: genero,
      senha: senha,
      saldo: 0.0
    }

    usuarios << novo_usuario #<< = adicionar ao final do array
    salvar_dados(usuarios) #Aunção salvar_dados grava esses dados no arquivo usuarios.json
    puts "Conta criada com sucesso! Agora faça login."

  when 3
    puts "Saindo do sistema..."
    exit

  else
    puts "Opção inválida! Tente novamente."
  end
end

# Menu após login
saldo = usuario_logado[:saldo]

loop do
  puts "\nEscolha uma das opções abaixo:"
  puts "1 - Sacar"
  puts "2 - Depositar"
  puts "3 - Consultar saldo"
  puts "4 - Sair"
  opcao = gets.chomp.to_i

  case opcao
  when 1 # Sacar
    puts "Saldo atual: R$ #{saldo}"
    puts "Digite o valor que deseja sacar:"
    valor_saque = gets.chomp.to_f

    if valor_saque > saldo
      puts "Saldo insuficiente!"
    else
      puts "Digite sua senha para confirmar o saque:"
      senha_digitada = gets.chomp
      if senha_digitada == usuario_logado[:senha]
        saldo -= valor_saque
        puts "Saque de R$ #{valor_saque} realizado com sucesso!"
        puts "Saldo atual: R$ #{saldo}"

        # Atualiza saldo do usuário logado
        usuario_logado[:saldo] = saldo
        salvar_dados(usuarios)
      else
        puts "Senha incorreta!"
      end
    end

  when 2 # Depositar
    puts "Digite o valor a ser depositado:"
    valor_deposito = gets.chomp.to_f

    puts "Digite sua senha para confirmar o depósito:"
    senha_digitada = gets.chomp
    if senha_digitada == usuario_logado[:senha]#:senha = chaves do hash
      saldo += valor_deposito
      puts "Depósito de R$ #{valor_deposito} realizado com sucesso!"

      # Atualiza saldo do usuário logado
      usuario_logado[:saldo] = saldo #:saldo = chaves do hash
      salvar_dados(usuarios)
    else
      puts "Senha incorreta!"
    end

  when 3 # Consultar saldo
    puts "Seu saldo atual é de R$ #{saldo}"

  when 4 # Sair
    puts "Saindo do sistema..."
    break

  else
    puts "Opção inválida, tente novamente."
  end
end
