# frozen_string_literal: true

# Clase para llevar el control del tablero del juego o de los frames
class TableroBolos
  def initialize
    @puntuaciones = Array.new(10, 0)
    @lanzamientos = []
  end

  def lanzar(pinos)
    @lanzamientos << pinos
  end

  def calcular_puntuacion
    indice_lanzamiento = 0
    10.times do |cuadro_de_juego|
      if strike?(indice_lanzamiento)
        @puntuaciones[cuadro_de_juego] = 10 + strike_bonus(indice_lanzamiento)
        indice_lanzamiento += 1
      elsif spare?(indice_lanzamiento)
        @puntuaciones[cuadro_de_juego] = 10 + spare_bonus(indice_lanzamiento)
        indice_lanzamiento += 2
      else
        @puntuaciones[cuadro_de_juego] = frame_score(indice_lanzamiento)
        indice_lanzamiento += 2
      end
    end
    @puntuaciones.reduce(:+)
  end

  def mostrar_tablero_grafico
    puts '  Frame   |   Puntuación'
    puts '------------------------'
    suma_acumulada = 0
    @puntuaciones.each_with_index do |puntuacion, frame|
      frame_num = frame == 9 ? '10' : (frame + 1).to_s # Ajuste para el último frame
      suma_acumulada += puntuacion
      puts "  #{frame_num.rjust(6)}   |   #{suma_acumulada}"
    end
  end

  private
  
  # Métodos privados para la lógica interna del cálculo de puntuación

  def strike?(indice_lanzamiento)
    @lanzamientos[indice_lanzamiento] == 10
  end

  def spare?(indice_lanzamiento)
    @lanzamientos[indice_lanzamiento] + @lanzamientos[indice_lanzamiento + 1] == 10
  end

  def strike_bonus(indice_lanzamiento)
    @lanzamientos[indice_lanzamiento + 1] + @lanzamientos[indice_lanzamiento + 2]
  end

  def spare_bonus(indice_lanzamiento)
    @lanzamientos[indice_lanzamiento + 2]
  end

  def frame_score(indice_lanzamiento)
    @lanzamientos[indice_lanzamiento] + @lanzamientos[indice_lanzamiento + 1]
  end
end
