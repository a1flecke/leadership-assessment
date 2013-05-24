class CreateAssessmentCategoryScores < ActiveRecord::Migration
  def change
    create_table :assessment_category_scores do |t|
      t.references :assessment
      t.references :category
      t.integer :score

      t.timestamps
    end
    add_index :assessment_category_scores, :assessment_id
    add_index :assessment_category_scores, :category_id
  end
end
