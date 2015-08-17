require "acceptance/acceptance_helper"


  RSpec.describe "ToDo Upload", type: :feature do

    it "uploads a new image with ToDo task" do

      visit "/todos/new"

      fill_in "Title", with: "test1"
      attach_file "todo_photo_url", "spec/fixtures/sea_turtle.jpg"
      click_button "Create Todo"

      expect(page).to have_content("test1")
      expect(page).to have_css(".todo_image[src='/images/upload/sea_turtle.jpg']")

    end

  end
