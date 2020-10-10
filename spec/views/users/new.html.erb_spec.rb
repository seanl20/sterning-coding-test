require 'rails_helper'

RSpec.describe "users/new", type: :view do
  before(:each) do
    assign(:user, User.new(
      first_name: "MyString",
      last_name: "MyString",
      species: "MyString",
      gender: "MyString",
      weapon: "MyString",
      vehicle: "MyString"
    ))
  end

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do

      assert_select "input[name=?]", "user[first_name]"

      assert_select "input[name=?]", "user[last_name]"

      assert_select "input[name=?]", "user[species]"

      assert_select "input[name=?]", "user[gender]"

      assert_select "input[name=?]", "user[weapon]"

      assert_select "input[name=?]", "user[vehicle]"
    end
  end
end