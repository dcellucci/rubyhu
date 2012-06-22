module Rubyhu
  class Hu_BatteryPower < Hu_Plugin
    def self.get_data
      output = ""
      powerInfo = `pmset -g ps`

      if powerInfo.include? "AC Power"
        powerSource = "AC"
      elsif powerInfo.include? "Battery"
        powerSource = "Battery"
      end

      if powerInfo.include? "charged"
        powerState = "Charged"
      else
        if powerInfo.include? "discharging"
          powerState = "Discharging"
        else
          powerState = "Charging"
        end
      end

      if powerState != ""
        percentOffset = powerInfo.index('%')
        percentage = powerInfo[percentOffset-2..percentOffset]
        if percentage[0] == " "
          percentage = percentage[1..-1]
        end
        timeOffset = powerInfo.index(':')
        if timeOffset != nil
          time = powerInfo[timeOffset-2..timeOffset+3]
          if time[0] == " "
            time = time[1..-1]
          end
        end
      end

      output = "Power: #{powerSource} #{powerState} #{time} #{percentage}"
      return output
    end
  end
end
