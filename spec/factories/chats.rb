FactoryBot.define do
  factory :chat do
    name { "My Chat" }
    chat_type { "private" }

    after(:build) do |chat|
      chat.users << FactoryBot.build(:user) unless chat.users.any?
    end
  end
end