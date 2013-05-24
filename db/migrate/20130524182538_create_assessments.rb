class CreateAssessments < ActiveRecord::Migration
  def change
    create_table :assessments do |t|
      t.string :name
      t.references :assessment_category_score

      t.timestamps
    end
    add_index :assessments, :assessment_category_score_id
  end
end
