# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    name "Jon"
    email "Doe"
    provider "MyString"
    uid "MyString"
  end
end
