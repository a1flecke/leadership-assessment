require 'spec_helper'

describe Category do
  it 'has a valid factory' do
    FactoryGirl.create(:category).should be_valid
  end
end
