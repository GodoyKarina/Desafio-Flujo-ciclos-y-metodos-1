# Selección jugador uno
puts "¡Bienvenido al juego Piedra, Papel o Tijera!"
#puts "Ingresa tu nombre de jugador"
puts "Elige una opción: Piedra:0 Papel:1 Tijera:2"
jugador_uno = gets.chomp.to_i
puts "Elegiste #{jugador_uno}"

# Validar la entrada del jugador uno
unless [0, 1, 2].include?(jugador_uno)
  puts "Opción inválida: Debe ser piedra(0), papel(1) o tijera(2)."
  exit
end

# Selección jugador dos
jugador_dos = rand(0..2)
puts "Computador juega #{jugador_dos}"

# Condición
if jugador_uno == jugador_dos
  puts "Empataste"
elsif (jugador_uno == 0 && jugador_dos == 2) || (jugador_uno == 1 && jugador_dos == 0) || (jugador_uno == 2 && jugador_dos == 1)
  puts "Ganaste"
else 
   puts "Perdiste"
end 