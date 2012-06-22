require 'rubyhu'
require 'rubyhu/cli'
require 'spec_helper'

describe Rubyhu do
  it "Snapshots properly" do
    Rubyhu.snapshot.should include("Power")
  end
end

describe Rubyhu::Hu_Plugin do
  it "Finds my plugins" do
    Rubyhu::Hu_Plugin.repository.size.should_not eql(0)
  end

  it "Should properly give errors" do
    expect { Rubyhu::Hu_Plugin.get_data }.to raise_error(NotImplementedError)
  end

  Rubyhu::Hu_Plugin.repository.each { |plugin|
    it "finds a plugin" do
      plugin.get_data.should be
    end
  }
end

describe Rubyhu::CLI do
  describe "#snap" do
    let(:snap) { Rubyhu::CLI.start(["snap"]) }

    it "Snapshots properly in CLI" do
      results = capture(:stdout) {snap}
      results.should include("Power")
    end
  end
end

