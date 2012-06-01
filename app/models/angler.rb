class Angler < ActiveRecord::Base
  has_many :fishes
  attr_accessible :boat_num, :name
end
