# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :assessment do |f|
    f.name {Faker::Name.name}
  end

  factory :assessment_with_categories, parent: :assessment do |f|
    f.categories {
      4.times do
        FactoryGirl.create(:category)
      end
    }
  end
end
