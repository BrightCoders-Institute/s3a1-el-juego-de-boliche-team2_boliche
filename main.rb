# frozen_string_literal: true

# importaciones
require_relative 'tablero'

tablero = TableroBolos.new

# Simulamos una partida con algunos lanzamientos
lanzamientos = [10, 3, 9, 0, 10, 0, 8, 8, 2, 0, 6, 10, 10, 10, 8, 1]

lanzamientos.each { |pinos| tablero.lanzar(pinos) }

lanzamientos.each do |pinos|
  tablero.lanzar(pinos)
  puts "Lanzamientos actuales: #{tablero.instance_variable_get(:@lanzamientos).inspect}"
end
#puts lanzamientos.inspect
#puts tablero.calcular_puntuacion.inspect
#puts tablero.lanzar.inspect

# Calculamos la puntuación final
# puntuacion_final = tablero.calcular_puntuacion

# Mostramos el tablero gráfico
# tablero.mostrar_tablero_grafico
# puts "Puntuación final: #{puntuacion_final}"