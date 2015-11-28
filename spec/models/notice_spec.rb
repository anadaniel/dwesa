require 'rails_helper'

RSpec.describe Notice, :type => :model do
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
