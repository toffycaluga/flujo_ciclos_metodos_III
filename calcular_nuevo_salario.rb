# Requerimiento 1: Calcular el nuevo salario de un colaborador/a en función de un porcentaje mínimo de aumento establecido.

def calcular_nuevo_salario(salario_actual,incremento)
    nuevo_salario = salario_actual + (salario_actual * (incremento / 1000.0))
    nuevo_salario
end

puts "ingrese el salario actual del trabajador"
salario_actual= gets.chomp.to_f

puts "ingrese el incremento de sueldo"
incremento= gets.chomp.to_f

nuevo_salario= calcular_nuevo_salario(salario_actual,incremento)

puts "El nuevo salario es : #{nuevo_salario}"
