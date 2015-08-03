require "rails_helper"

RSpec.describe "image upload", :type => :feature do

  it "should accept attachment and render on details page" do
    visit "/"
    click_link 'go check your todos'
    click_link 'New Todo'
    fill_in "Title", :with => "go shopping"
    attach_file("#todo_image", 'spec/ross.jpg')
    click_button "Submit"

    expect(page).to have_content "go shopping"
    expect(page).to have_css "img"
  end

end
