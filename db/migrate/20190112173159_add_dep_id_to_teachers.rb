class AddDepIdToTeachers < ActiveRecord::Migration[5.2]
  def change
    add_column :teachers, :dep_id, :integer
  end
end
