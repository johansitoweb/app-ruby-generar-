# Función para generar una contraseña segura
def generar_contrasena(longitud, incluir_numeros, incluir_caracteres_especiales)
    caracteres = [('a'..'z'), ('A'..'Z')].map(&:to_a).flatten
    caracteres += (0..9).to_a if incluir_numeros
    caracteres += %w(! @ # $ % ^ & *) if incluir_caracteres_especiales
  
    contrasena = Array.new(longitud) { caracteres.sample }.join
  end
  
  # Obtener la longitud de la contraseña
  puts "¿Longitud de la contraseña deseada?"
  longitud = gets.chomp.to_i
  
  # Preguntar si se desean incluir números en la contraseña
  puts "¿Incluir números? (s/n)"
  incluir_numeros = gets.chomp.downcase == 's'
  
  # Preguntar si se desean incluir caracteres especiales en la contraseña
  puts "¿Incluir caracteres especiales? (s/n)"
  incluir_caracteres_especiales = gets.chomp.downcase == 's'
  
  # Generar y mostrar la contraseña segura
  contrasena_generada = generar_contrasena(longitud, incluir_numeros, incluir_caracteres_especiales)
  puts "Contraseña generada: #{contrasena_generada}"