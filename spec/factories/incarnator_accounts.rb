FactoryGirl.define do
  factory :account, :class => 'Incarnator::Account' do
    sequence(:user_name) { |n| "user#{n}" }
    sequence(:email) { |n| "user#{n}@fakemail.com" }
    password "qwertyui"

    sequence(:first_name) { |n| "Name_#{n}" }
    sequence(:last_name) { |n| "Lastname_#{n}" }
    sequence(:middle_name) { |n| "Midname_#{n}" }

    confirmed_at Time.now

    factory :unconfirmed_account do
      confirmed_at nil
    end
  end

end
