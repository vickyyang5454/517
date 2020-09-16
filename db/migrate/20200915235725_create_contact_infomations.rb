class CreateContactInfomations < ActiveRecord::Migration[6.0]
  def change
    create_table :contact_infomations do |t|
      t.string :name
      t.string :email
      t.string :password
      t.integer :phone_num
      t.string :address
      t.string :user_type

      t.timestamps
    end
  end
end
