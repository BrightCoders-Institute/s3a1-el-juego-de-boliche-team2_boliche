# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'tablero'

class TableroBolosTest < Minitest::Test
  def setup
    @tablero = TableroBolos.new
  end

  def test_lanzar_un_frame
    @tablero.lanzar(3)
    @tablero.lanzar(4)
    assert_equal 7, @tablero.calcular_puntuacion
  end

  def test_spare
    @tablero.lanzar(5)
    @tablero.lanzar(5)
    @tablero.lanzar(3)
    assert_equal 16, @tablero.calcular_puntuacion
  end

  def test_strike
    @tablero.lanzar(10)
    @tablero.lanzar(3)
    @tablero.lanzar(4)
    assert_equal 24, @tablero.calcular_puntuacion
  end

  def test_juego_perfecto
    12.times { @tablero.lanzar(10) }
    assert_equal 300, @tablero.calcular_puntuacion
  end

  def test_juego_con_spare_final
    9.times { @tablero.lanzar(10) }
    @tablero.lanzar(5)
    @tablero.lanzar(5)
    @tablero.lanzar(5)
    assert_equal 265, @tablero.calcular_puntuacion
  end
end
