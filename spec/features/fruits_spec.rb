require "spec_helper"

feature "Fruits" do

  scenario "User can see welcome on the homepage" do
    visit '/'
    expect(page).to have_content("Welcome")
    click_on "Add Fruit"
    fill_in "name", with: "Banana"
    fill_in "description", with: "Yummy"
    click_on "add"
    expect(page).to have_content "Banana"
  end

  scenario "User can update an item" do
    visit '/'
    click_on "Add Fruit"
    fill_in "name", with: "Apple"
    fill_in "description", with: "Red"
    click_on "add"
    click_on "edit Apple"
    fill_in "name", with: "Apple"
    fill_in "description", with: "juicy"
    click_on "add"
    expect(page).to have_content "Apple:juicy"
  end

  scenario "User can delete an item" do
    visit '/'
    click_on "Add Fruit"
    fill_in "name", with: "Apple"
    fill_in "description", with: "Red"
    click_on "add"
    click_on "delete Apple"
    expect(page).to_not have_content "Apple"
  end

end