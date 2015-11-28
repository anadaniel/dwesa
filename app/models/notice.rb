class Notice < ActiveRecord::Base
  EXPIRING_CATEGORIES = ["request_ride", "offer_ride"]

  belongs_to :checkpoint

  validates :checkpoint_id, :description, :category, presence: true

  before_save :set_expiry_date

  def set_expiry_date
    self.expiry_date = 1.day.from_now if EXPIRING_CATEGORIES.include?(self.category)  
  end
end
