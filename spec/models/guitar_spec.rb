require 'spec_helper'

describe Guitar do
  before do
    @guitar = Guitar.new()
  end
  subject { @guitar }

  it { should allow_value("a brand name").for(:brand) }
  it { should allow_value("name of a model").for(:modelName) }
  it { should allow_value("some color").for(:color) }

  it { should_not allow_value("not year").for(:year) }
  it { should_not allow_value("not a weight").for(:weight) }
  it { should_not allow_value("not number of frets").for(:frets) }
  it { should_not allow_value("not a number of strings").for(:strings) }

  it { should_not allow_value(-3).for (:year) }
  it { should_not allow_value(0).for (:year) }
  it { should_not allow_value(1997.5).for (:year) }
  it { should_not allow_value(999999).for (:year)}
  it { should allow_value(1995).for (:year) }

  it { should allow_value(3).for(:weight)}
  it { should_not allow_value(-3).for (:weight) }
  it { should_not allow_value(3.5).for (:weight) }
  it { should_not allow_value(0).for (:weight) }

  it { should allow_value(3).for(:frets)}
  it { should_not allow_value(-3).for (:frets) }
  it { should_not allow_value(3.5).for (:frets) }
  it { should_not allow_value(0).for (:frets) }

  it { should allow_value(3).for(:strings)}
  it { should_not allow_value(-3).for (:strings) }
  it { should_not allow_value(-3).for (:strings) }
  it { should_not allow_value(0).for (:strings) }


end
