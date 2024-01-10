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
  
    # Verificar si el nuevo lanzamiento es 10 y el último lanzamiento fue en una posición impar
    if pinos == 10 && @lanzamientos.size % 2 == 1
      @lanzamientos << 0
      @indice_lanzamiento += 1  # Aumentar el índice para mantener el seguimiento correcto
    end
  
    puts "Lanzamientos actuales: #{@lanzamientos.inspect}"  # Agrega esta línea para mostrar los lanzamientos después de cada inserción
  end

  def calcular_puntuacion
    # Implementa lógica para calcular puntuación con bonificaciones por strikes y spares
    # ...
    # lanzamientos = [10, 0, 
    #                 3, 9, 
    #                 0, 10, 
    #                 0, 8, 
    #                 8, 2, 
    #                 0, 6, 
    #                 10,0, 
    #                 10,0,
    #                 10,0,
    #                 8, 1]

    @lanzamientos.each_with_index do |lanzamiento, indice_lanzamiento|
      if indice_lanzamiento % 2 == 0 && lanzamiento == 10
        strike(indice_lanzamiento) #La primera vez indice_lanzamiento es = 0
        indice_lanzamiento += 1
      end
    end
    # Resto del código para calcular puntuación...
  end

  def mostrar_tablero_grafico
    # Implementa la representación gráfica del tablero
    # ...
  end

  private

  # Métodos privados para la lógica interna del cálculo de puntuación

  def spare(indice_lanzamiento)
    @spare_puntacion = @lanzamientos[indice_lanzamiento] + @lanzamientos[indice_lanzamiento + 1] == 10
    @total_spare_puntacion = @spare_puntacion + @lanzamientos[indice_lanzamiento + 2]
  end

  def strike(indice_lanzamiento)
    @strike_puntuacion = @lanzamientos[indice_lanzamiento] == 10
    @total_strike_puntuacion = @strike_puntuacion + @lanzamientos[indice_lanzamiento + 1] + @lanzamientos[indice_lanzamiento + 2]
  end
  
  def tiro_normal(indice_lanzamiento)
    @total_tiro_normal = @lanzamientos[indice_lanzamiento] + @lanzamientos[indice_lanzamiento + 1]
  end
end
