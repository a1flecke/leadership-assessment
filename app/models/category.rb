class Category < ActiveRecord::Base
  attr_accessible :name
  has_many :assessments, through: :assessment_category_scores
  has_many :assessment_category_scores
end
