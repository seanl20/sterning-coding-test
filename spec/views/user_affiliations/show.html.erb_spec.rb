require 'rails_helper'

RSpec.describe "user_affiliations/show", type: :view do
  before(:each) do
    @user_affiliation = assign(:user_affiliation, UserAffiliation.create!(
      user: User.create(first_name: "Test", species: "test species", gender: "test gender"),
      affiliation: Affiliation.create(title: "Test")
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
