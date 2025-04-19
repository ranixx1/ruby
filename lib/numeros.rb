puts "insira um numero:"
x = gets.chomp.to_i
puts "insira outro numero"
y = gets.chomp.to_i



soma = x + y
subtracao = x - y
multiplicacao = x * y
divisao = x.to_f / y.to_f #to_f = numeros decimais

puts "soma:#{soma}"
puts "subtração:#{subtracao}"
puts "multiplicação:#{multiplicacao}"
puts "divisao:#{divisao}"