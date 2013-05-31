class Category < ActiveRecord::Base
  attr_accessible :name
  has_many :assessment, through: :assessment_category_score
end
