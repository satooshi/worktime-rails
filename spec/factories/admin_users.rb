FactoryBot.define do
  factory :admin_user do
    email { "#{SecureRandom.uuid}@example.com" }
    password { SecureRandom.uuid }
  end
end
