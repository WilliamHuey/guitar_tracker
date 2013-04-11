require 'spec_helper'

describe Guitar do
  before do
    @guitar = Guitar.new()
  end
  subject { @guitar }

  it { should allow_value(nil).for(:brand) }
  it { should allow_value(nil).for(:modelName) }
  it { should allow_value(nil).for(:year) }
  it { should allow_value(nil).for(:color) }
  it { should allow_value(nil).for(:weight) }
  it { should allow_value(nil).for(:frets) }
  it { should allow_value(nil).for(:strings) }

end
