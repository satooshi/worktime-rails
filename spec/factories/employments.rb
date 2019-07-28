FactoryBot.define do
  factory :employment do
    association :company, factory: :company
    association :user, factory: :user
  end
end
