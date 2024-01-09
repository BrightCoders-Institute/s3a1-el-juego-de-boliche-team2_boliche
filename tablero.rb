# frozen_string_literal: true

# Clase para llevar el control del tablero del juego o de los frames
class TableroBolos
  def initialize
    @puntuaciones = Array.new(10, 0)
    @lanzamientos = []
  end

  def lanzar(pinos)
    @lanzamientos << pinos
    # if @lanzamientos.count == 2
    #   calcular_puntuacion
    #   elsif @lanzamientos.count > 2
    #     eliminar_primer_lanzamiento
    #     lanzar(@lanzamientos[-1])
    # end
  end

  
  

  def calcular_puntuacion
    # Implementa lógica para calcular puntuación con bonificaciones por strikes y spares
    # ...
    end

    @puntuaciones.reduce(:+)
  end

  def mostrar_tablero_grafico
    # Implementa la representación gráfica del tablero
    # ...
  end

  private
  # Métodos privados para la lógica interna del cálculo de puntuación
end
