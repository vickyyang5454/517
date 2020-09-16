class CreateCreditcards < ActiveRecord::Migration[6.0]
  def change
    create_table :creditcards do |t|
      t.string :name
      t.integer :card_num
      t.date :experation_date
      t.integer :cvv
      t.references :student_id

      t.timestamps
    end
  end
end
