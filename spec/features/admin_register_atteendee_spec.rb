require 'spec_helper'

describe "Admin happy path" do
  it "Admin register attendee successfully" do
    visit root_path
    fill_in "attendee_name", with: "Foo perales"
    fill_in "attendee_email", with: "test@test.com"
    fill_in "attendee_twitter", with: "@parvick"
    fill_in "attendee_place", with: "Chicago"
    fill_in "attendee_enterprise", with: "bootcamp"
    fill_in "attendee_curp", with: "oiuyoiu123412"
    fill_in "attendee_carrier", with: "Software Engineer"
    click_button "Save"
  end
end
