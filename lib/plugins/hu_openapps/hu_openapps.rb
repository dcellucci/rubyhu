module Rubyhu
  class Hu_OpenApps< Hu_Plugin
    def self.get_data
      output = `osascript lib/plugins/hu_openapps/openapps.applescript`
      output = output.strip![0...-1] +"]"
      openapps = JSON.parse(output)
      data = {:openapps => openapps}
      return data
    end
  end
end
