require 'rails_helper'

RSpec.describe "user_locations/show", type: :view do
  before(:each) do
    @user_location = assign(:user_location, UserLocation.create!(
      user: User.create(first_name: "Test", species: "test species", gender: "test gender"),
      location: Location.create(title: "Test")
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
