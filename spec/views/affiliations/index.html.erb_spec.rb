require 'rails_helper'

RSpec.describe "affiliations/index", type: :view do
  before(:each) do
    assign(:affiliations, [
      Affiliation.create!(
        title: "Title"
      ),
      Affiliation.create!(
        title: "Title"
      )
    ])
  end

  it "renders a list of affiliations" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
  end
end
