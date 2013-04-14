# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :mock do
    name "Example Mock"
    description "Check this out!"
    user_id 1
  end
end
