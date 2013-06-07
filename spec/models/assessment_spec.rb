require 'spec_helper'

describe Assessment do
  it 'has a valid factory' do
      FactoryGirl.create(:assessment).should be_valid
  end

  it 'has categories' do
    assessment = FactoryGirl.build(:assessment_with_categories)
    assessment.categories.size.should have_at_least(1).items
  end

  it 'adding a category increases the number of categories' do
    assessment = FactoryGirl.build(:assessment)
    num_categories = assessment.categories.size
    assessment.categories << FactoryGirl.build(:category)
    expect(assessment.categories.size).to eq(num_categories+1)
  end

  it 'can set name' do
    assessment = FactoryGirl.build(:assessment)
    new_name = "Aaron"
    assessment.name = new_name
    expect(assessment.name).to eq(new_name)
  end

end
