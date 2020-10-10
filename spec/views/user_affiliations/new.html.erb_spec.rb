require 'rails_helper'

RSpec.describe "user_affiliations/new", type: :view do
  before(:each) do
    assign(:user_affiliation, UserAffiliation.new(
      user: nil,
      affiliation: nil
    ))
  end

  it "renders new user_affiliation form" do
    render

    assert_select "form[action=?][method=?]", user_affiliations_path, "post" do

      assert_select "input[name=?]", "user_affiliation[user_id]"

      assert_select "input[name=?]", "user_affiliation[affiliation_id]"
    end
  end
end
