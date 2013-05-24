class AssessmentCategoryScore < ActiveRecord::Base
  belongs_to :assessment
  belongs_to :category
  attr_accessible :score
end
