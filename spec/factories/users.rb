FactoryBot.define do
  factory :user do
    name { 'Taro' }
    email { "#{SecureRandom.uuid}@example.com" }
    password { SecureRandom.uuid }
  end
end
