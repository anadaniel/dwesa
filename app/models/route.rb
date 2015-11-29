class Route < ActiveRecord::Base
  has_many :checkpoints
  accepts_nested_attributes_for :checkpoints
end
