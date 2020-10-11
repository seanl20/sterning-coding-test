require 'rails_helper'

RSpec.describe "user_affiliations/index", type: :view do
  before(:each) do
    assign(:user_affiliations, [
      UserAffiliation.create!(
          user: User.create(first_name: "Test01", species: "test species01", gender: "test gender01"),
          affiliation: Affiliation.create(title: "Test01")
      ),
      UserAffiliation.create!(
          user: User.create(first_name: "Test02", species: "test species02", gender: "test gender02"),
          affiliation: Affiliation.create(title: "Test02")
      )
    ])
  end

  it "renders a list of user_affiliations" do
    render
  end
end
