# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :todo do
    title "Finish writing OKRs"
    complete false
  end

  factory :todo_incomplete, class: Todo do
    title 'This is not done'
    complete false
  end

  factory :todo_complete, class: Todo do
    title 'This is done'
    complete true
  end
end
