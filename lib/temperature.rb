require "temperature/version"

module Temperature
  def self.say
    "Temperature Gem"
  end

  class Temperature
    def initialize(value, type)
      @value = value
      @type = type
    end

    def to_fahrenheit
      case @type
      when 'celsius'
        @value * (9 / 5.0) + 32
      when 'kelvin'
        @value * 9.0 / 5 - 459.67
      when 'fahrenheit'
        @value
      else
        false
      end
    end

    def to_kelvin
      case @type
      when 'celsius'
        @value + 273.15
      when 'kelvin'
        @value
      when 'fahrenheit'
        (@value + 459.67) * 5 / 9.0
      else
        false
      end
    end

    def to_celsius
      case @type
      when 'celsius'
        @value
      when 'kelvin'
        @value - 273.15
      when 'fahrenheit'
        (@value - 32) * 5.0 / 9
      else
        false
      end
    end
  end
end
