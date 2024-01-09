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

