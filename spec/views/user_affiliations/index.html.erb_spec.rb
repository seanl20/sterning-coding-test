require 'rails_helper'

RSpec.describe "user_affiliations/index", type: :view do
  before(:each) do
    assign(:user_affiliations, [
      UserAffiliation.create!(
        user: nil,
        affiliation: nil
      ),
      UserAffiliation.create!(
        user: nil,
        affiliation: nil
      )
    ])
  end

  it "renders a list of user_affiliations" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
