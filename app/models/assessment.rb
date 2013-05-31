class Assessment < ActiveRecord::Base
  has_many :categories, through: :assessment_category_scores
  has_many :assessment_category_scores
  attr_accessible :name
end
