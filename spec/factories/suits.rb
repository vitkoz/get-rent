FactoryBot.define do
  factory :suit do
    court { nil }
    renter { nil }
    property { nil }
    rental_rate { "9.99" }
    paid_through { 1 }
    rent_due { "9.99" }
    other { "9.99" }
    balance { "9.99" }
    court_date { "2018-12-02" }
    rent { "9.99" }
    cost { "9.99" }
    writ_date { "2018-12-02" }
    case_num { "MyString" }
    def_date { "2018-12-02" }
    file_judgment { false }
    file_writ { false }
    paid { false }
    signed { false }
    signed_date { "2018-12-02" }
  end
end
