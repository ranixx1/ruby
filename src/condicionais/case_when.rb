nota = 8

resultado = case nota
when 10
  "Perfeito!"
when 7..9
  "Bom"
when 5..6
  "Regular"
else
  "Precisa melhorar"
end

puts resultado
