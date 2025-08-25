# Adicionar ao final
numbers = [1, 2, 3]
numbers.push(4)
numbers << 5

# Remove o ultimo
letters = ["a", "b", "c", "d"]
letters.pop
letters

# Remove o primeiro
planets = ["Mercúrio", "Vênus", "Terra", "Marte"]
planets.shift
planets

# Adiciona um elemento no meio
fruits = ["banana", "maçã"]
fruits.unshift("laranja")

# Remove por indice
animals = ["cachorro", "gato", "passarinho", "peixe"]
animals.delete_at(1) # Remove o elemento no índice 1
animals

# Verifica se o item está na lista
items = ["água", "pão", "leite"]
items.include?("pão") #true
items.include?("queijo") #false

# Obtem o tamanho da lista
cars = ["Ford", "Toyota", "Honda"]
cars.length
cars.size

# Ordernar
numbers = [1, 4, 6, 7, 3, 2, 5]
numbers.sort
numbers.reverse  #Ordenar ao contrário