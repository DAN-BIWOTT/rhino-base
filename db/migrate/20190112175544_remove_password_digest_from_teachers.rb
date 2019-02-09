class RemovePasswordDigestFromTeachers < ActiveRecord::Migration[5.2]
  def change
    remove_column :teachers, :password_digest, :varchar
  end
end
