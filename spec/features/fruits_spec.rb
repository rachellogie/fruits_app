require "spec_helper"

feature "Fruits" do

  scenario "User can see welcome on the homepage" do
    visit '/'
    expect(page).to have_content("Welcome")
    click_on "Add Fruit"
    fill_in "fruit", with: "Banana"
    click_on "add"
    expect(page).to have_content "Banana"
  end

end