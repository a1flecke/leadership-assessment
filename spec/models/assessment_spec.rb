require 'spec_helper'

describe Assessment do
  it 'has a valid factory' do
      FactoryGirl.create(:assessment).should be_valid
  end

  it 'has categories' do
    assessment = FactoryGirl.build(:assessment_with_categories)
    assessment.categories.size.should have_at_least(1).items
  end

end
