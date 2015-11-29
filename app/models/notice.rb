class Notice < ActiveRecord::Base
  EXPIRING_CATEGORIES = ["request_ride", "offer_ride"]

  belongs_to :checkpoint

  validates :checkpoint_id, :description, :category, presence: true

  scope :active, -> { where("expiry_date > ? OR expiry_date IS NULL", Time.now) }

  before_create :set_expiry_date

  def set_expiry_date
    self.expiry_date = 1.day.from_now if EXPIRING_CATEGORIES.include?(self.category)  
  end

  def expire
    self.update expiry_date: Time.now
  end
end
