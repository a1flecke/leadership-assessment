class Assessment < ActiveRecord::Base
  belongs_to :assessment_category_score
  attr_accessible :name
end
