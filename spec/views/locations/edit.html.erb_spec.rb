require 'rails_helper'

RSpec.describe "locations/edit", type: :view do
  before(:each) do
    @location = assign(:location, Location.create!(
      title: "MyString"
    ))
  end

  it "renders the edit location form" do
    render

    assert_select "form[action=?][method=?]", location_path(@location), "post" do

      assert_select "input[name=?]", "location[title]"
    end
  end
end
