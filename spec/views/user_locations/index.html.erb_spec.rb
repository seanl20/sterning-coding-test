require 'rails_helper'

RSpec.describe "user_locations/index", type: :view do
  before(:each) do
    assign(:user_locations, [
      UserLocation.create!(
          user: User.create(first_name: "Test01", species: "test species01", gender: "test gender01"),
          location: Location.create(title: "Test01")
      ),
      UserLocation.create!(
          user: User.create(first_name: "Test02", species: "test species02", gender: "test gender02"),
          location: Location.create(title: "Test02")
      )
    ])
  end

  it "renders a list of user_locations" do
    render
  end
end
