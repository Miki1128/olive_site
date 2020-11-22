FactoryBot.define do
  factory :user do
    nickname              {"test"}
    email                 {"test@example"}
    password              {"12345m"}
    password_confirmation {password}
  end
end