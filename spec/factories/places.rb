# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :place do
    website "MyString"
    address "MyString"
    price 1
    vat 1
    vat_number "MyString"
  end
end
