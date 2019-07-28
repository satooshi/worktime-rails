FactoryBot.define do
  factory :time_record do
    association :user, factory: :user
    start_at { Time.zone.now }

    factory :work_time do
      type { 'WorkTime' }
    end

    factory :break_time do
      type { 'BreakTime' }
    end
  end
end
