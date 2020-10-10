require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        first_name: "First Name",
        last_name: "Last Name",
        species: "Species",
        gender: "Gender",
        weapon: "Weapon",
        vehicle: "Vehicle"
      ),
      User.create!(
        first_name: "First Name",
        last_name: "Last Name",
        species: "Species",
        gender: "Gender",
        weapon: "Weapon",
        vehicle: "Vehicle"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", text: "First Name".to_s, count: 2
    assert_select "tr>td", text: "Last Name".to_s, count: 2
    assert_select "tr>td", text: "Species".to_s, count: 2
    assert_select "tr>td", text: "Gender".to_s, count: 2
    assert_select "tr>td", text: "Weapon".to_s, count: 2
    assert_select "tr>td", text: "Vehicle".to_s, count: 2
  end
end
