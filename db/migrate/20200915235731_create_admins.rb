class CreateAdmins < ActiveRecord::Migration[6.0]
  def change
    create_table :admins do |t|
      t.references :contact_id    
      t.timestamps
    end
  end
end
