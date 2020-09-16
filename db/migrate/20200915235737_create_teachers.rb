class CreateTeachers < ActiveRecord::Migration[6.0]
  def change
    create_table :teachers do |t|
      t.text :discipline
      t.references :contact_id
      
      t.timestamps
    end
  end
end
