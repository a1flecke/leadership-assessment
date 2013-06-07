# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'

FactoryGirl.define do
  factory :category do |f|
    f.name {Faker::Name.name}
  end

  factory :category_with_assessments, parent: :category do |f|
    f.assessments {
      assessments = Array.new()
      4.times do
        assessments << FactoryGirl.create(:assessment)
      end
      assessments
    }
  end
end
