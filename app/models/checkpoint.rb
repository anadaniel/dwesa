class Checkpoint < ActiveRecord::Base
  belongs_to :route
  has_many :notices
  has_many :active_notices, -> { active }, class_name: "Notice"
end
