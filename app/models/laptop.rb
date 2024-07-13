class Laptop < ApplicationRecord
  validates :lbrand, presence: true
  validates :lmodel, presence: true
end
