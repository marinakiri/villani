def villani(x)
array = Array (1...x) # Crée un array sans prendre 1 ni x
array.select! { |n| n % 3 == 0 || n % 5 == 0 } # Sélectionne uniquement les nombres multiples de 3 ou 5
result = array.reduce(0, :+) # Additionne tous les éléments de l'array
puts "La somme des multiples de 3 et 5 en dessous de #{x} est égale à #{result}."
end

print "Entrez un nombre : "
x = gets.chomp.to_i # Stocke l'input sous forme de nombre
villani(x)