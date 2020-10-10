require 'rails_helper'

RSpec.describe "user_locations/new", type: :view do
  before(:each) do
    assign(:user_location, UserLocation.new(
      user: nil,
      location: nil
    ))
  end

  it "renders new user_location form" do
    render

    assert_select "form[action=?][method=?]", user_locations_path, "post" do

      assert_select "input[name=?]", "user_location[user_id]"

      assert_select "input[name=?]", "user_location[location_id]"
    end
  end
end
