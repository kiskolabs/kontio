# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :forwarding do
    source "MyString"
    destination "MyText"
  end
end
