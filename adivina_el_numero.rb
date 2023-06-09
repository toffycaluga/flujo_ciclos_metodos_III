# Requerimiento 2: Simular el juego de "Adivina el número".

def adivina_el_numero(rango)
    numero_secreto = rand(1..rango)
    adivinado = false
  
    while !adivinado
      puts "Adivina el número secreto (entre 1 y #{rango}):"
      numero_usuario = gets.chomp.to_i
  
      if numero_usuario == numero_secreto
        puts "¡Ganaste! El número secreto era #{numero_secreto}."
        adivinado = true
      else
        puts "Incorrecto. Intenta de nuevo."
      end
    end
  end
  
  # Solicitar datos al usuario
  puts "Ingrese el rango máximo para el juego:"
  rango = gets.chomp.to_i
  
  adivina_el_numero(rango)
  