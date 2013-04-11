require 'spec_helper'

describe Guitar do

  before do
    @guitar = Guitar.new()
  end

  subject { @guitar }

  describe "Brand" do
    it { should allow_value("a brand name").for(:brand) }
  end

  describe "modelName" do
    it { should allow_value("name of a model").for(:modelName) }
  end

  describe "Color" do
    it { should allow_value("some color").for(:color) }
  end

  describe "Year" do
    time = Time.new
    current_year = time.year
    it { should allow_value(1995).for (:year) }
    it { should allow_value(current_year).for (:year) }
    it { should_not allow_value(-3).for (:year) }
    it { should_not allow_value(0).for (:year) }
    it { should_not allow_value(1997.5).for (:year) }
    it { should_not allow_value(999999).for (:year) }
    it { should_not allow_value("not year").for(:year) }
  end

  describe "Weight" do
    it { should allow_value(3).for(:weight) }
    it { should_not allow_value(-3).for (:weight) }
    it { should_not allow_value(3.5).for (:weight) }
    it { should_not allow_value(0).for (:weight) }
    it { should_not allow_value("not a weight").for(:weight) }
  end

  describe "Frets" do
    it { should allow_value(3).for(:frets) }
    it { should_not allow_value(-3).for (:frets) }
    it { should_not allow_value(3.5).for (:frets) }
    it { should_not allow_value(0).for (:frets) }
    it { should_not allow_value("not number of frets").for(:frets) }
  end

  describe "Strings" do
    it { should allow_value(3).for(:strings) }
    it { should_not allow_value(-3).for (:strings) }
    it { should_not allow_value(3.5).for (:strings) }
    it { should_not allow_value(0).for (:strings) }
    it { should_not allow_value("not a number of strings").for(:strings) }
  end

end
