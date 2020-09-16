class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :major
      t.references :contact_id

      t.timestamps
    end
  end
end
