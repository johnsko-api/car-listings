class Car < ActiveRecord::Base
  belongs_to :manufacturer
  validates :make, presence: true
  validates :color, presence: true
  validates :manufacturer, presence: true
  validates_inclusion_of :year, in: 1920..2200
  validates :mileage, presence: true
  #not sure if i need this or not well play around it
  validates :year, presence: true

end
