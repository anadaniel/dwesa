FactoryGirl.define do
  factory :notice do
    description     "Test notice"
    checkpoint_id   1
    category        "safety"

    factory :request_ride_notice do
      category  "request_ride"
    end
  end
end
