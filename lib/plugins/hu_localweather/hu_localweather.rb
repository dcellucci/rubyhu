require 'google_weather'
module Rubyhu
    class Hu_LocalWeather < Hu_Plugin
        def self.get_data
            weather = GoogleWeather.new('Atlanta, GA')
            current = weather.current_conditions
            data = {:weather => {:condition       => current.condition,
                                             :temperature => current.temp_c,
                                             :humidity       => current.humidity[-3..-2]   }}
            return data
        end
    end
end
