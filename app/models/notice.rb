class Notice < ActiveRecord::Base
  belongs_to :checkpoint

  validates :checkpoint_id, :description, :category, presence: true
end
