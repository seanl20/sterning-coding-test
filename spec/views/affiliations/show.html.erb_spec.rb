require 'rails_helper'

RSpec.describe "affiliations/show", type: :view do
  before(:each) do
    @affiliation = assign(:affiliation, Affiliation.create!(
      title: "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
  end
end
