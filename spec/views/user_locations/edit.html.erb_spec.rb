require 'rails_helper'

RSpec.describe "user_locations/edit", type: :view do
  before(:each) do
    @user_location = assign(:user_location, UserLocation.create!(
      user: nil,
      location: nil
    ))
  end

  it "renders the edit user_location form" do
    render

    assert_select "form[action=?][method=?]", user_location_path(@user_location), "post" do

      assert_select "input[name=?]", "user_location[user_id]"

      assert_select "input[name=?]", "user_location[location_id]"
    end
  end
end
