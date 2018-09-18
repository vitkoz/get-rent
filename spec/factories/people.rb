FactoryBot.define do
  factory :person do
    type { "" }
    first_name { "MyString" }
    last_name { "MyString" }
    dob { "2018-09-17" }
    ssn { "MyString" }
  end
end
