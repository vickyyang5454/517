class CreateCourseOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :course_orders do |t|
      t.status :
      t.references :student_id
      t.references :teachment_id
      t.timestamps
    end
  end
end
