require 'spec_helper'

describe Category do
  it 'has a valid factory' do
    FactoryGirl.create(:category).should be_valid
  end

  it 'has assessments' do
    category = FactoryGirl.build(:category_with_assessments)
    category.assessments.size.should have_at_least(1).items
  end
end
