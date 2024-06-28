# Función para convertir longitud de pulgadas a centímetros
def pulgadas_a_centimetros(pulgadas)
    centimetros = pulgadas * 2.54
  end
  
  # Función para convertir peso de libras a kilogramos
  def libras_a_kilogramos(libras)
    kilogramos = libras * 0.453592
  end
  
  # Menú de opciones para el usuario
  puts "Selecciona el tipo de conversión que deseas realizar:"
  puts "1. Pulgadas a Centímetros"
  puts "2. Libras a Kilogramos"
  opcion = gets.chomp.to_i
  
  # Realizar la conversión basada en la opción seleccionada
  case opcion
  when 1
    puts "Ingresa la longitud en pulgadas:"
    pulgadas = gets.chomp.to_f
    centimetros = pulgadas_a_centimetros(pulgadas)
    puts "#{pulgadas} pulgadas son #{centimetros} centímetros."
  when 2
    puts "Ingresa el peso en libras:"
    libras = gets.chomp.to_f
    kilogramos = libras_a_kilogramos(libras)
    puts "#{libras} libras son #{kilogramos} kilogramos."
  else
    puts "Opción inválida. Por favor selecciona una opción válida."
  end