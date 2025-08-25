#sintaxe básica da linguagem Ruby

# Comentário de uma linha

=begin
Comentário de múltiplas linhas
usando =begin e =end
=end

# Variáveis
nome = "João"
idade = 25
altura = 1.75
ativo = true

# Saída
puts "Nome: #{nome}, Idade: #{idade}, Altura: #{altura}, Ativo: #{ativo}"

# Tipos básicos e operações
puts 5 + 3       # Soma
puts 10 / 2      # Divisão
puts 2**3        # Potência
puts "Ruby".upcase  # Métodos de string
            #RUBY

# Condicional
if idade >= 18
  puts "Maior de idade"
else
  puts "Menor de idade"
end

# Unless (if invertido)
puts "Conta inativa" unless ativo

# Loop (times)
3.times do |i|
  puts "Repetição #{i + 1}"
end

# Array
frutas = ["maçã", "banana", "uva"]
frutas.each do |fruta|
  puts "Fruta: #{fruta}"
end

# Hash (dicionário)
usuario = { nome: "João", idade: 25, ativo: true }
puts "Nome do usuário: #{usuario[:nome]}"

# Definindo método
def saudacao(nome)
  puts "Olá, #{nome}!"
end

saudacao("Maria")

# Classe simples
class Pessoa
  attr_accessor :nome, :idade # attr_accessor cria métodos de leitura e escrita para os atributos

  def initialize(nome, idade)
    @nome = nome  #@ indica variável de instância
    @idade = idade
  end

  def apresentar
    puts "Meu nome é #{@nome} e tenho #{@idade} anos." 
  end
end

pessoa = Pessoa.new("Lucas", 30) #new cria uma nova instância da classe
pessoa.apresentar

pessoas = [Pessoa.new("Ricardo",19),
          Pessoa.new(idade=25)]
puts pessoas[0] # posição 0
puts pessoas[1] # posição 1
puts pessoas[0] > pessoas[1] #o mesmo que: pessoas[0].>(pessoas[1])

# Classe aberta
class string
  def iniciais
    ini= String.new

    for nome in self.split do
      ini +=nome[0]
    end

    return ini 
  end
end
puts "Ranilton Costa de Lima".iniciais #RCL
puts "ranilton costa de lima".iniciais.upcase #RCL

# Herança

class Mamifero
  def respira
    puts "inspira e expira"
  end
end

class Gato < Mamifero
  def fala
    puts "Miauuu"
  end
end
rani = Gato.new
rani.respira
rani.fala

#caso herança

class Ave
  def limpa
    puts"Estou limpando minhas penas."
  end
  def voa
    puts"Estou voando."
  end
end

class Pinguim < Ave
  def voa 
    puts"Desculpa. Prefiro nadar."
  end
end

puts "*** Pinguim ***"
pinguim = Pinguim.new
pinguim.limpa
pinguim.voa
puts "*** Outra ave ***"
ave= Ave.new
ave.limpa
ave.voa

class GF
  @m = 10
  puts @m.object_id
  def initialize
    puts 'na classe GF'
  end

  def gfmethod
    puts 'chamada de metodo de GF'
    end
end
# classe F, subclasse de GF
class F< GF
  def initialize
    super
    puts 'na classe F'
  end
end
# classe S, subclasse de F
class S < F
  def initialize
    super
    puts @m
    puts @m.object_id
    puts 'Na classe S'
  end
end

filho = S.new
filho = gfmethod


#Variaveis de instância
class Cachorro
  def initialize(raca)
    @raca = raca
  end
end
class CartaoVacina < Cachorro
  def initialize(raca, nome)
    super(raca)
    @nome = nome
  end

  def to_s
    "(#@raca, #@nome)"
  end
end
puts CartaoVacina.new("Labrador", "Benzy").to_s

#encapsulamento
class Pessoa
  attr :nome, :nascimento, :cpf
  def metodoPublico end

  protected
    def metodoProtegido end
    def outroMetodoProtegido end
  
  private
    def metodoPrivado end
    def outroMetodoPrivado end
  
  public
    def deNovoMetodoPublico end
end
