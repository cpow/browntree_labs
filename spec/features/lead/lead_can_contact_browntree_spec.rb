require "rails_helper"

feature "lead can contact browntree", type: :feature do
  scenario "by visiting the root directory" do
    visit("/")

    within(".centered-navigation-menu") do
      click_on("Contact")
    end

    fill_in("Email", with: "someone@example.com")
    fill_in("Name", with: "some new lead")
    click_on("Send")

    expect(page).to have_content("Thank you")
  end
end
