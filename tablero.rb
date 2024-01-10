# frozen_string_literal: true

# Clase para llevar el control del tablero del juego o de los frames
class TableroBolos
  def initialize
    @puntuaciones = Array.new(10, 0)
    @lanzamientos = []
    @indice_lanzamiento = 0
  end

  def lanzar(pinos)
    @lanzamientos << pinos
  end

  def calcular_puntuacion
    indice_lanzamiento = 0
    10.times do |cuadro_de_juego|
      if strike?(indice_lanzamiento)
        calcular_puntuacion_modulo1(cuadro_de_juego,indice_lanzamiento)
      elsif spare?(indice_lanzamiento)
        @puntuaciones[cuadro_de_juego] = 10 + spare_bonus(indice_lanzamiento)
        indice_lanzamiento += 2
      else
        @puntuaciones[cuadro_de_juego] = frame_score(indice_lanzamiento)
        indice_lanzamiento += 2
      end
    end
  end
  
  def calcular_puntuacion_modulo1(cuadro_de_juego,indice_lanzamiento)
    @puntuaciones[cuadro_de_juego] = 10 + strike_bonus(indice_lanzamiento)
    indice_lanzamiento += 1
  end

  def mostrar_tablero_grafico
    # Implementa la representación gráfica del tablero
    # ...
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
