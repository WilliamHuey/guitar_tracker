class Guitar < ActiveRecord::Base
  attr_accessible :brand, :color, :frets, :modelName, :strings, :weight, :year

  time = Time.new
  current_year = time.year

  validates :brand, presence: { with: /\A\Z/ }
  validates :modelName, presence: { with: /\A\Z/ }
  validates :color, presence: { with: /\A\Z/ }

  validates :year, presence: true, numericality: { only_integer: true, greater_than: 0, less_than: current_year }
  validates :weight, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :frets, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :strings, presence: true, numericality: { only_integer: true, greater_than: 0 }

end
