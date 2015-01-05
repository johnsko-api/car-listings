require "rails_helper"

feature "User Creates a Manufacturer", %q(
As a car salesperson
I want to record a car manufacturer
So that I can keep track of the types of cars found in the lot

Acceptance Criteria
[ ]I must specify a manufacturer name and country.
[ ]If I do not specify the required information, I am presented with errors.
[ ]If I specify the required information, the manufacturer is recorded and I am redirected to the index of manufacturers

) do

  scenario "user succesfully creates manufacturer" do
    visit root_path
    click_link "Create New Manufacturer"
    fill_in "Manufacturer Name", with: "Toyota"
    fill_in "Country", with: "Japan"
    click_button "Submit"

    expect(page).to have_content("You've succesfully submitted a manufacturer")
    expect(page).to have_content("Toyota")
  end
end
