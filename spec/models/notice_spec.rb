require 'rails_helper'

RSpec.describe Notice, :type => :model do
  context 'scopes' do
    describe '#active' do
      before do
        2.times { FactoryGirl.create :notice } # Safety notices, no expiry date set

        2.times { FactoryGirl.create :request_ride_notice } #Newly created notices, expire in 1 day

        @expired_notice = FactoryGirl.create :request_ride_notice
        @expired_notice.update expiry_date: 1.hour.ago # Set the expiry date to 1 hour ago
      end

      it { expect(Notice.active).not_to include(@expired_notice) }
      it { expect(Notice.active.count).to be == 4 }
    end
  end

  context 'callbacks' do
    describe '#set_expiry_date' do
      context 'the notice belongs to the expirable categories' do
        before do
          @notice = FactoryGirl.build :request_ride_notice
          @notice.save
        end

        it { expect(@notice.expiry_date).to_not be_nil }
        it { expect(@notice.expiry_date).to be < 1.day.from_now }
      end

      context 'the notice belongs to a non-expirable' do
        before do
          @notice = FactoryGirl.build :notice
          @notice.save
        end

        it { expect(@notice.expiry_date).to be_nil }
      end
    end
  end
end
