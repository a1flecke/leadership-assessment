class RemoveAssessmentCategoryScoreFromAssessments < ActiveRecord::Migration
  def up
    remove_column :assessments, :assessment_category_score_id
  end

  def down
    add_column :assessments, :assessment_category_score_id, :integer
  end
end
