module Rubyhu
  class Hu_OpenBrowserTabs< Hu_Plugin
    def self.get_data
      output = `osascript lib/plugins/hu_openbrowsertabs/urls.applescript`
      output = output.strip![0...-1] +"]"
      opentabs = JSON.parse(output)
      data = {:opentabs => opentabs}
      return data
    end
  end
end
