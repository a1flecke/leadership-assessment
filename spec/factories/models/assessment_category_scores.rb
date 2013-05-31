# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :assessment_category_score do
    assessment nil
    category nil
    score {rand(1..10)}
  end
end
