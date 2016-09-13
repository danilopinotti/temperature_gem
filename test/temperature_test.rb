require 'test_helper'

class TemperatureTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Temperature::VERSION
  end

  def test_one_is_one
    assert_equal 1, 1
  end

  def test_convert_from_celsius_to_fahrenheit
    assert_equal 96.8, Temperature::Temperature.new(36, 'celsius').to_fahrenheit
  end

  def test_convert_from_celsius_to_kelvin
    assert_equal 309.15, Temperature::Temperature.new(36, 'celsius').to_kelvin
  end

  def test_convert_from_celsius_to_celsius
    assert_equal 36, Temperature::Temperature.new(36, 'celsius').to_celsius
  end

  def test_convert_from_fahrenheit_to_fahrenheit
    assert_equal 96.8, Temperature::Temperature.new(96.8, 'fahrenheit').to_fahrenheit
  end

  def test_convert_from_fahrenheit_to_kelvin
    assert_equal 309.15, Temperature::Temperature.new(96.8, 'fahrenheit').to_kelvin
  end

  def test_convert_from_fahrenheit_to_celsius
    assert_equal 36, Temperature::Temperature.new(96.8, 'fahrenheit').to_celsius
  end

  def test_convert_from_kelvin_to_fahrenheit
    assert_equal 96.8, Temperature::Temperature.new(309.15, 'kelvin').to_fahrenheit
  end

  def test_convert_from_kelvin_to_kelvin
    assert_equal 309.15, Temperature::Temperature.new(309.15, 'kelvin').to_kelvin
  end

  def test_convert_from_kelvin_to_celsius
    assert_equal 36, Temperature::Temperature.new(309.15, 'kelvin').to_celsius
  end

  def test_convert_from_celsius_to_fahrenheit_with_fever
    assert_equal 101.3, Temperature::Temperature.new(38.5, 'celsius').to_fahrenheit
  end

  def test_convert_from_celsius_to_kelvin_with_fever
    assert_equal 311.65, Temperature::Temperature.new(38.5, 'celsius').to_kelvin
  end

  def test_convert_from_celsius_to_celsius_with_fever
    assert_equal 38.5, Temperature::Temperature.new(38.5, 'celsius').to_celsius
  end

  def test_convert_from_fahrenheit_to_fahrenheit_with_fever
    assert_equal 101.3, Temperature::Temperature.new(101.3, 'fahrenheit').to_fahrenheit
  end

  def test_convert_from_fahrenheit_to_kelvin_with_fever
    assert_equal 311.65, Temperature::Temperature.new(101.3, 'fahrenheit').to_kelvin
  end

  def test_convert_from_fahrenheit_to_celsius_with_fever
    assert_equal 38.5, Temperature::Temperature.new(101.3, 'fahrenheit').to_celsius
  end

  def test_convert_from_kelvin_to_fahrenheit_with_fever
    assert_equal 101.3, Temperature::Temperature.new(311.65, 'kelvin').to_fahrenheit
  end

  def test_convert_from_kelvin_to_kelvin_with_fever
    assert_equal 311.65, Temperature::Temperature.new(311.65, 'kelvin').to_kelvin
  end

  def test_convert_from_kelvin_to_celsius_with_fever
    assert_equal 38.5, Temperature::Temperature.new(311.65, 'kelvin').to_celsius
  end
end
