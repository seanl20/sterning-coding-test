require 'rails_helper'

RSpec.describe "locations/index", type: :view do
  before(:each) do
    assign(:locations, [
      Location.create!(
        title: "Title"
      ),
      Location.create!(
        title: "Title"
      )
    ])
  end

  it "renders a list of locations" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
  end
end
