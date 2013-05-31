require 'spec_helper'

describe AssessmentCategoryScore do
  it 'has a valid factory' do
    FactoryGirl.create(:assessment_category_score).should be_valid
  end
end
