# Requerimiento 3: Calcular el nivel de obesidad basado en el IMC.

def calcular_nivel_obesidad(imc)
    if imc < 30
      "Sin obesidad"
    elsif imc < 35
      "Obesidad grado I - Moderado"
    elsif imc < 40
      "Obesidad grado II - Severo"
    else
      "Obesidad grado III - Muy severo"
    end
  end
  
  # Solicitar datos al usuario
  puts "Ingrese el peso en kg:"
  peso = gets.chomp.to_f
  
  puts "Ingrese la altura en metros:"
  altura = gets.chomp.to_f
  
  imc = peso / (altura ** 2)
  nivel_obesidad = calcular_nivel_obesidad(imc)
  puts "Tu IMC es: #{imc}"
  puts "Tu nivel de obesidad es: #{nivel_obesidad}"
  