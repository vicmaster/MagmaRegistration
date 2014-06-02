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


    within '.date' do
      within '#attendee_birth_date_3i' do
        find("option[value='4']").click
      end
      within '#attendee_birth_date_2i' do
        find("option[value='6']").click
      end
      within '#attendee_birth_date_1i' do
        find("option[value='1986']").click
      end
    end

    within '#attendee_gender' do
      find("option[value='Masculino']").click
    end

    within '#attendee_system_id' do
      find("option[value='2']").click
    end

    within '#attendee_size_id' do
      find("option[value='1']").click
    end

    click_button "Save"
  end
end
