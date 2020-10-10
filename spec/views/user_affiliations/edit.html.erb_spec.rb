require 'rails_helper'

RSpec.describe "user_affiliations/edit", type: :view do
  before(:each) do
    @user_affiliation = assign(:user_affiliation, UserAffiliation.create!(
      user: nil,
      affiliation: nil
    ))
  end

  it "renders the edit user_affiliation form" do
    render

    assert_select "form[action=?][method=?]", user_affiliation_path(@user_affiliation), "post" do

      assert_select "input[name=?]", "user_affiliation[user_id]"

      assert_select "input[name=?]", "user_affiliation[affiliation_id]"
    end
  end
end
