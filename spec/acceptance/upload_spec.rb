require 'rails_helper'

RSpec.describe "Upload Image", {type: :feature} do

  it "should allow users to attach an image to a todo" do
    visit "/"
    click_link "go check your todos"
    click_link "New Todo"
    fill_in "Title", with: "New Task"
    attach_file "Image", Rails.root.join("spec", "Dolphin-4870.jpg")
    click_button "Create Todo"

    expect(page).to have_content "New Task"
    expect(page).to have_css(".todo_img")
    expect(page).to have_css("img[src='http://www.example.com/upload/Dolphin-4870.jpg']")
  end
end
