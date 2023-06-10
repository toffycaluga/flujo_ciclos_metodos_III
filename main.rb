# main.rb




def mostrar_menu
    puts "-------- MENU --------"
    puts "1. Calcular nuevo salario"
    puts "2. Jugar a 'Adivina el número'"
    puts "3. Calcular nivel de obesidad"
    puts "0. Salir"
    puts "----------------------"
end

def ejecutar_opcion(opcion)
    case opcion
    when 1
        # Requerimiento 1: Calcular el nuevo salario
        require_relative 'calcular_nuevo_salario'
        calcular_nuevo_salario()
    when 2
        # Requerimiento 2: Juego de "Adivina el número"
        require_relative 'adivina_el_numero'
        adivina_el_numero()
    when 3
        # Requerimiento 3: Cálculo de nivel de obesidad
        require_relative 'obesidad_imc'
        obesidad_imc()
    when 0
        puts "¡Hasta luego!"
        exit
    else
        puts "Opción inválida. Inténtalo de nuevo."
    end
end
def ejecutar_requerimiento(opcion)
    ejecutar_opcion(opcion)
  
    loop do
      puts ""
      puts "¿Desea realizar otra operación con el mismo requerimiento? (s/n)"
      respuesta = gets.chomp.downcase
  
      if respuesta == "s"
        ejecutar_opcion(opcion)
      else
        break
      end
    end
  end

loop do
  mostrar_menu()
  puts "Ingrese una opción:" 
  opcion = gets.chomp.to_i
  ejecutar_requerimiento(opcion)
  puts ""
end
