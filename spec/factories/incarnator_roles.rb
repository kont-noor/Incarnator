FactoryGirl.define do
  factory :incarnator_role, :class => 'Incarnator::Role' do
    sequence(:name) { |n| "role_#{n}" }
    sequence(:description) { |n| "Role #{n} description" }
  end
end
