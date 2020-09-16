class CreateTeachments < ActiveRecord::Migration[6.0]
  def change
    create_table :teachments do |t|
      t.references :course_id
      t.references :teacher_id

      t.timestamps
    end
  end
end
