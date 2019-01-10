class AddDidExamToExams < ActiveRecord::Migration[5.2]
  def change
    add_column :exams, :did_exam, :bool,default:1
  end
end
