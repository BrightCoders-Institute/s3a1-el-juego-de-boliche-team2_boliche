# frozen_string_literal: true

# importaciones
require_relative 'tablero'

tablero = TableroBolos.new

# Simulamos una partida con algunos lanzamientos
lanzamientos = [10, 7, 3, 9, 0, 10, 0, 8, 8, 2, 0, 6, 10, 10, 10, 8, 1]
lanzamientos.each { |pins| tablero.lanzar(pins) }

# Calculamos la puntuación final
puntuacion_final = tablero.calcular_puntuacion

# Mostramos el tablero gráfico
tablero.mostrar_tablero_grafico
puts "Puntuación final: #{puntuacion_final}"