class CreateStaffs < ActiveRecord::Migration[5.2]
  def change
    create_table :staffs do |t|
      t.text :firstName
      t.text :lastName
      t.string :email
      t.date :joinDate
      t.string :password_digest
      t.text :designation
      t.text :department
      t.text :gender
      t.integer :phoneNumber
      t.date :birthDate
      t.string :address
      t.string :image
      t.text :education

      t.timestamps
    end
    add_index :staffs, :email, unique: true
  end
end
