# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :reimbursement do
    reference "MyString"
    payee nil
    comments "MyText"
    data "MyText"
  end
end
