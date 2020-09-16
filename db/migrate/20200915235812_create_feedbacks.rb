class CreateFeedbacks < ActiveRecord::Migration[6.0]
  def change
    create_table :feedbacks do |t|
      t.text :description
      t.references :teacher_id
      
      t.timestamps
    end
  end
end
