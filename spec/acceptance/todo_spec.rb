require 'acceptance/acceptance_helper'

RSpec.describe('todos', type: :feature) do
  it 'allows editing of todos on edit page'

  it 'shows name and completion status of individual todo on show page'

  it 'lists name and completion status of all todos on index page'

  it 'allows creation of a new todo'

  it 'allows deletion of todos on index page'

  it 'connects to new, edit and show on index page'

  it 'allows editing of completion status on index page' do
    todo = FactoryGirl.create(:todo)
    todo_incomplete = FactoryGirl.create(:todo_incomplete)
    visit '/todos'
    find(:css, "#complete_#{todo.id}").set(true)
    within("#edit_todo_#{todo.id}") do
      click_button('Update Todo') # Normally this would redirect to 'show'
    end
    todo = Todo.find_by_id(todo.id)
    todo_incomplete = Todo.find_by_id(todo_incomplete.id)
    expect(todo.complete).to be true
    expect(todo_incomplete.complete).to be false
    visit '/todos'
    within("table") do
      expect(page).to have_content('Complete')
    end
  end
end
