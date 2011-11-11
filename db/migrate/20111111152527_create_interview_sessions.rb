class CreateInterviewSessions < ActiveRecord::Migration
  def change
    create_table :interview_sessions do |t|
      t.integer :code
      t.boolean :is_open
      t.text :interviewer_text
      t.text :interviewer_comments
      t.boolean :interviewer_seen_last_candidate_text
      t.text :candidate_text
      t.boolean :candidate_seen_last_interviewer_text

      t.timestamps
    end
  end
end
