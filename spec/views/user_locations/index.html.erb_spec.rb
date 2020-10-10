require 'rails_helper'

RSpec.describe "user_locations/index", type: :view do
  before(:each) do
    assign(:user_locations, [
      UserLocation.create!(
        user: nil,
        location: nil
      ),
      UserLocation.create!(
        user: nil,
        location: nil
      )
    ])
  end

  it "renders a list of user_locations" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
