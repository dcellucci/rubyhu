module Rubyhu
  class Hu_BatteryPower < Hu_Plugin
    def self.get_data
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
        percentage = powerInfo[percentOffset-3..percentOffset]
        percentage.strip!
        timeOffset = powerInfo.index(':')
        if timeOffset != nil
          time = powerInfo[timeOffset-2..timeOffset+2]
          time.strip!
        end
      end

      data = {:power => { :source         => powerSource,
                                     :state           => powerState,
                                     :percentage  => percentage,
                                     :time            => time              }}
      return data
    end
  end
end
