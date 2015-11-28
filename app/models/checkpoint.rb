class Checkpoint < ActiveRecord::Base
  belongs_to :route
  has_many :notices
end
