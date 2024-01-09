# frozen_string_literal: true

require_relative 'tablero'

# Clase JuegoBolos para llevar el registro del juego
class JuegoBolos
  def initialize
    @tablero = TableroBolos.new
  end

  def lanzar(pins)
    @tablero.lanzar(pins)
    
  end

  def calcular_puntuacion
    @tablero.calcular_puntuacion
  end

  def mostrar_tablero_grafico
    @tablero.mostrar_tablero_grafico
  end
end

